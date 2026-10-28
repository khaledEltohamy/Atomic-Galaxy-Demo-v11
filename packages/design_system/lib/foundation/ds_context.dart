// GENERATED FILE - DO NOT EDIT BY HAND.
// ignore_for_file: unused_import, unused_local_variable

import 'package:flutter/material.dart';

import '../theme/theme_extension.dart';
import 'ds_responsive.dart';

/// Shortcuts to the active brand's tokens.
///
/// `context.ds.backgroundPrimary` changes with the selected brand, unlike the
/// static `AliasTokens.backgroundPrimary`.
extension DsContext on BuildContext {
  DsThemeExtension get dsTheme =>
      Theme.of(this).extension<DsThemeExtension>()!;

  dynamic get ds => dsTheme.tokens;

  DsWindowSize get dsWindowSize => DsResponsive.sizeOf(this);
}
