// GENERATED FILE - DO NOT EDIT BY HAND.
// ignore_for_file: unused_import, unused_local_variable

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';

class AppDestination {
  const AppDestination({
    required this.label,
    required this.icon,
    this.selectedIcon,
  });

  final String label;
  final IconData icon;
  final IconData? selectedIcon;
}

/// One navigation structure for every screen size:
///
///   compact  -> bottom NavigationBar
///   medium   -> NavigationRail (icons + labels)
///   expanded -> extended NavigationRail (side bar)
///
/// Needs at least two destinations (a Flutter requirement).
class AppAdaptiveScaffold extends StatelessWidget {
  const AppAdaptiveScaffold({
    super.key,
    required this.destinations,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.body,
    this.appBar,
    this.drawer,
    this.floatingActionButton,
    this.railLeading,
    this.extendRailWhenExpanded = true,
    this.breakpoints = const DsBreakpoints(),
    this.backgroundColor,
    this.navigationColor,
    this.selectedColor,
    this.unselectedColor,
    this.indicatorColor,
    this.dividerColor,
  });

  final List<AppDestination> destinations;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? floatingActionButton;
  final Widget? railLeading;
  final bool extendRailWhenExpanded;
  final DsBreakpoints breakpoints;
  /// Scaffold background. Defaults to `tokens.backgroundPrimary`.
  final Color? backgroundColor;
  /// Bottom bar / rail background. Defaults to `tokens.backgroundPrimary`.
  final Color? navigationColor;
  /// Selected destination icon and label. Defaults to `tokens.buttonPrimaryBackground`.
  final Color? selectedColor;
  /// Unselected destination icon and label. Defaults to `tokens.textSecondary`.
  final Color? unselectedColor;
  /// Pill behind the selected destination. Defaults to `tokens.backgroundSecondary`.
  final Color? indicatorColor;
  /// Line between the rail and the body. Defaults to `tokens.dividerDefault`.
  final Color? dividerColor;

  Widget _icon(BuildContext context, AppDestination item, bool isSelected, Color color) {
    final data = isSelected ? (item.selectedIcon ?? item.icon) : item.icon;
    return Icon(data, color: color);
  }

  @override
  Widget build(BuildContext context) {
    final tokens = context.ds;
    final Color page = (backgroundColor ?? tokens.backgroundPrimary);
    final Color bar = (navigationColor ?? tokens.backgroundPrimary);
    final Color on = (selectedColor ?? tokens.buttonPrimaryBackground);
    final Color off = (unselectedColor ?? tokens.textSecondary);
    final Color pill = (indicatorColor ?? tokens.backgroundSecondary);
    final Color? line = (dividerColor ?? tokens.dividerDefault);

    final size = DsResponsive.sizeOf(context, breakpoints: breakpoints);

    if (size == DsWindowSize.compact) {
      return Scaffold(
        backgroundColor: page,
        appBar: appBar,
        drawer: drawer,
        floatingActionButton: floatingActionButton,
        body: body,
        bottomNavigationBar: NavigationBar(
          backgroundColor: bar,
          indicatorColor: pill,
          selectedIndex: selectedIndex,
          onDestinationSelected: onDestinationSelected,
          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>(
            (states) => TextStyle(
              color: states.contains(WidgetState.selected) ? on : off,
            ),
          ),
          destinations: [
            for (final item in destinations)
              NavigationDestination(
                icon: _icon(context, item, false, off),
                selectedIcon: _icon(context, item, true, on),
                label: item.label,
              ),
          ],
        ),
      );
    }

    final extended = extendRailWhenExpanded && size == DsWindowSize.expanded;

    return Scaffold(
      backgroundColor: page,
      appBar: appBar,
      drawer: drawer,
      floatingActionButton: floatingActionButton,
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: bar,
            indicatorColor: pill,
            extended: extended,
            leading: railLeading,
            selectedIndex: selectedIndex,
            onDestinationSelected: onDestinationSelected,
            labelType: extended
                ? NavigationRailLabelType.none
                : NavigationRailLabelType.all,
            selectedLabelTextStyle: TextStyle(color: on),
            unselectedLabelTextStyle: TextStyle(color: off),
            destinations: [
              for (final item in destinations)
                NavigationRailDestination(
                  icon: _icon(context, item, false, off),
                  selectedIcon: _icon(context, item, true, on),
                  label: Text(item.label),
                ),
            ],
          ),
          if (line != null) VerticalDivider(width: 0, thickness: 0, color: line),
          Expanded(child: body),
        ],
      ),
    );
  }
}
