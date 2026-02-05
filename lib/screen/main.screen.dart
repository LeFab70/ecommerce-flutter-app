import '../views/ui/profile.page.dart';
import '../views/ui/search.page.dart';

import '../views/ui/cart.page.dart';
import '../views/ui/home.page.dart';

import '../views/shared/widgets/safe.area.widget.dart';

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = [HomePage(),CartPage(),ProfilePage(),SearchPage()];

  @override
  Widget build(BuildContext context) {
    int pageIndex = 3;
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: SafeAreaWidget(),
    );
  }
}
