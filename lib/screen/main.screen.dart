import 'package:ecommerce_app_flutter/controllers/main.screen.provider.dart';
import 'package:provider/provider.dart';

import '../views/ui/profile.page.dart';
import '../views/ui/search.page.dart';

import '../views/ui/cart.page.dart';
import '../views/ui/home.page.dart';

import '../views/shared/widgets/safe.area.widget.dart';

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Widget> pageList = [
    HomePage(),
    SearchPage(),
    HomePage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    //int pageIndex = 0;
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: SafeAreaWidget(
            currentIndex: mainScreenNotifier.pageIndex,
            changedIndex: (index) => mainScreenNotifier.pageIndex = index,
          ),
        );
      },
    );
  }
}
