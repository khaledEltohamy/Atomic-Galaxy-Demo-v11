import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:demo_app/main.dart';

void main() {
  testWidgets('Galaxy app builds', (tester) async {
    await tester.pumpWidget(const GalaxyApp());

    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
