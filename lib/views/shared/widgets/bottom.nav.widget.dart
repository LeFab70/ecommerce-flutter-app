import 'package:flutter/material.dart';

class BottomNavWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData icon;
  final Color color;

  const BottomNavWidget({
    super.key,
    this.onTap,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(width: 36, height: 36, child: Icon(icon, color: color)),
    );
  }
}
