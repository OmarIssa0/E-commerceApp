import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:smart_shope/features/home/peresntatio/view/home_view.dart';
import 'package:smart_shope/features/order/peresntation/view/order_view.dart';
import 'package:smart_shope/features/profile/peresntation/view/profile_view.dart';

import '../../../wishlist/peresntation/view/wishlist_view.dart';

class RootViews extends StatefulWidget {
  const RootViews({super.key});

  @override
  State<RootViews> createState() => _RootViewsState();
}

class _RootViewsState extends State<RootViews> {
  late PageController _controller;
  int currentScreen = 0;
  List<Widget> view = [
    const HomeView(),
    const WishlistView(),
    const OrderView(),
    const ProfileView(),
  ];

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: currentScreen,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _controller,
          children: view,
        ),
        bottomNavigationBar: NavigationBar(
          
          backgroundColor: Colors.white,
          indicatorColor: Colors.white,
          selectedIndex: currentScreen,
          height: kBottomNavigationBarHeight + 10,
          elevation: 0.4,
          onDestinationSelected: (index) {
            setState(() {
              currentScreen = index;
            });
            _controller.jumpToPage(currentScreen);
          },
          destinations: const [
            NavigationDestination(
              
              // icon: Icon(Icons.home),
              selectedIcon: Icon(IconlyBold.home),
              icon: Icon(IconlyLight.home),
              label: 'HOME',
            ),
            NavigationDestination(
              selectedIcon: Icon(IconlyBold.heart),
              icon: Icon(IconlyLight.heart),
              label: 'WISHLIST',
            ),
            NavigationDestination(
              icon: Icon(IconlyLight.bag),
              selectedIcon: Icon(IconlyBold.bag),
              label: 'ORDER',
            ),
            NavigationDestination(
              icon: Icon(IconlyLight.profile),
              selectedIcon: Icon(IconlyBold.profile),
              label: 'PROFILE',
            ),
          ],
        ),
      ),
    );
  }
}
