// galaxy-generated: theme-switcher v1
// Demo-only floating button that switches the brand (DsBrand.values, generated
// from your Figma brand collections) and the theme mode. It is hidden on
// white-label builds (lib/src/app/theme/galaxy_brand.dart locked to a brand).
// Galaxy refreshes this file while the marker line above exists.
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class GalaxyThemeSwitcher extends StatelessWidget {
  const GalaxyThemeSwitcher({
    super.key,
    required this.navigatorKey,
    required this.brand,
    required this.mode,
    required this.child,
  });

  final GlobalKey<NavigatorState> navigatorKey;
  final ValueNotifier<DsBrand> brand;
  final ValueNotifier<ThemeMode> mode;
  final Widget? child;

  void _open() {
    // The button lives above the Navigator (MaterialApp.builder),
    // so the sheet must be opened with the Navigator's own context.
    final navigatorContext =
        navigatorKey.currentContext;

    if (navigatorContext == null) return;

    showModalBottomSheet<void>(
      context: navigatorContext,
      builder: (_) =>
          _SwitcherSheet(
        brand: brand,
        mode: mode,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (child != null) child!,
        Positioned(
          right: 16,
          bottom: 16,
          child: SafeArea(
            child: FloatingActionButton.small(
              heroTag:
                  'galaxy-theme-switcher',
              onPressed: _open,
              child: const Icon(
                Icons.palette_outlined,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SwitcherSheet extends StatelessWidget {
  const _SwitcherSheet({
    required this.brand,
    required this.mode,
  });

  final ValueNotifier<DsBrand> brand;
  final ValueNotifier<ThemeMode> mode;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsets.all(16),
        child: ListenableBuilder(
          listenable: Listenable.merge([
            brand,
            mode,
          ]),
          builder: (context, _) =>
              Column(
            mainAxisSize:
                MainAxisSize.min,
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              const Text('Brand'),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: [
                  for (
                    final item
                        in DsBrand.values
                  )
                    ChoiceChip(
                      label:
                          Text(item.name),
                      selected:
                          brand.value ==
                              item,
                      onSelected: (_) =>
                          brand.value =
                              item,
                    ),
                ],
              ),
              const SizedBox(height: 16),
              const Text('Mode'),
              const SizedBox(height: 8),
              SegmentedButton<ThemeMode>(
                segments: const [
                  ButtonSegment(
                    value:
                        ThemeMode.light,
                    label:
                        Text('Light'),
                  ),
                  ButtonSegment(
                    value:
                        ThemeMode.dark,
                    label:
                        Text('Dark'),
                  ),
                  ButtonSegment(
                    value:
                        ThemeMode.system,
                    label:
                        Text('System'),
                  ),
                ],
                selected: {mode.value},
                onSelectionChanged:
                    (value) =>
                        mode.value =
                            value.first,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
