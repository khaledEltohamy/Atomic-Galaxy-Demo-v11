PROJECT_NAME ?= demo_app

.PHONY: bootstrap get android format analyze test run clean generate

bootstrap: get

# Generates Flutter's Android V2 embedding files when the platform is missing.
android:
	@if [ ! -f "apps/$(PROJECT_NAME)/android/app/src/main/AndroidManifest.xml" ]; then \
	  (cd "apps/$(PROJECT_NAME)" && flutter create --platforms=android --project-name "$(PROJECT_NAME)" .); \
	else \
	  echo "Android platform files already exist; review them before regenerating."; \
	fi

# Runs flutter pub get in every package. Run it after every pull that
# changes a pubspec.yaml. It does not depend on Melos.
get:
	@for d in apps/* packages/*; do \
	  if [ -f "$$d/pubspec.yaml" ]; then \
	    echo "==> $$d"; \
	    (cd "$$d" && flutter pub get) || exit 1; \
	  fi; \
	done

format:
	melos exec -- "dart format ."

analyze:
	melos exec -- "flutter analyze"

test:
	melos exec -- "flutter test"

run:
	flutter run -d chrome --target apps/$(PROJECT_NAME)/lib/main.dart

clean:
	melos exec -- "flutter clean"

generate:
	bash scripts/generate_design.sh
