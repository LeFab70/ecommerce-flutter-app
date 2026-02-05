import 'bottom.nav.widget.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SafeAreaWidget extends StatelessWidget {
  final Function(int) changedIndex;
  final int currentIndex;
  const SafeAreaWidget({super.key, required this.changedIndex, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsetsGeometry.all(8),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 18),
          margin: const EdgeInsetsGeometry.symmetric(horizontal: 10),
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            mainAxisAlignment: .spaceAround,
            mainAxisSize: .min,
            children: [
              BottomNavWidget(
                icon: Ionicons.home,
                onTap: () {changedIndex(0); },
                color: Colors.white,
                activeColor: Colors.amberAccent,
                isActive: currentIndex==0,
                label: 'home',
              ),
              BottomNavWidget(
                icon: Ionicons.search,
                onTap: () {changedIndex(1);},
                color: Colors.white,
                label: 'Search',
                activeColor: Colors.amberAccent,
                isActive: currentIndex==1,
              ),
              BottomNavWidget(
                icon: Ionicons.add,
                onTap: () {changedIndex(0);},
                color: Colors.white,
                label: '',
                activeColor: Colors.amberAccent,
                isActive: currentIndex==0,
              ),
              BottomNavWidget(
                icon: Ionicons.cart,
                onTap: () {changedIndex(3);},
                color: Colors.white,
                label: 'Cart',
                activeColor: Colors.amberAccent,
                isActive: currentIndex==3,
              ),
              BottomNavWidget(
                icon: Ionicons.person,
                onTap: () {changedIndex(4);},
                color: Colors.white,
                label: 'Profile',
                activeColor: Colors.amberAccent,
                isActive: currentIndex==4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}