// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../utils/constants/assets_path.dart';
import '../state_managment/cubit/navigation_cubit.dart';
import '../../../../modules/Shell/presentation/pages/home.dart';
import '../../../../modules/Cart/presentation/pages/cart.dart';
import '../../../../modules/Profile/presentation/pages/profile.dart';

class MainShellPage extends StatelessWidget {
  const MainShellPage({super.key, this.initialIndex = 0});

  final int initialIndex;

  @override
  Widget build(BuildContext context) => BlocProvider<NavigationCubit>(
        create: (_) => NavigationCubit(initialIndex),
        child: BlocBuilder<NavigationCubit, int>(
          builder: (context, selectedIndex) => Scaffold(
            backgroundColor: context.ds.backgroundPrimary,
            body: IndexedStack(
              index: selectedIndex,
              children: [
              const Home(),
              const SizedBox.shrink(),
              const Cart(),
              const Profile(),
              ],
            ),
            bottomNavigationBar: NavigationBar(
          selectedIndex: selectedIndex,
          onDestinationSelected: context.read<NavigationCubit>().selectTab,
          destinations: [
            NavigationDestination(
              icon: SvgPicture.asset(
                  iconIconHome4417,
                  width: 24.0,
                  height: 24.0,
                ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                  iconIconHeart4421,
                  width: 24.0,
                  height: 24.0,
                ),
              label: 'Favorites',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                  iconIconCart4425,
                  width: 24.0,
                  height: 24.0,
                ),
              label: 'Cart',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                  iconIconPerson4429,
                  width: 24.0,
                  height: 24.0,
                ),
              label: 'Profile',
            ),
          ],
        ),
          ),
        ),
      );
}
