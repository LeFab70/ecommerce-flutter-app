import 'bottom.nav.widget.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SafeAreaWidget extends StatelessWidget {
  const SafeAreaWidget({super.key});

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
            mainAxisAlignment: .spaceBetween,
            mainAxisSize: .min,
            children: [
              BottomNavWidget(
                icon: Ionicons.home,
                onTap: () {},
                color: Colors.white,
              ),
              BottomNavWidget(
                icon: Ionicons.search,
                onTap: () {},
                color: Colors.white,
              ),
              BottomNavWidget(
                icon: Ionicons.add,
                onTap: () {},
                color: Colors.white,
              ),
              BottomNavWidget(
                icon: Ionicons.cart,
                onTap: () {},
                color: Colors.white,
              ),
              BottomNavWidget(
                icon: Ionicons.person,
                onTap: () {},
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}