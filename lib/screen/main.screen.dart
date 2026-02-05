import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: const Text(
          'MainScreen',
          style: TextStyle(fontSize: 36, fontWeight: .bold),
        ),
      ),
    );
  }
}
