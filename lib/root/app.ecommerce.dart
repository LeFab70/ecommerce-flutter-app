import 'package:flutter/material.dart';

import '../screen/main.screen.dart';

class AppEcommerce extends StatelessWidget {
  const AppEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFE2E2E2)),
      home: MainScreen(),
    );
  }
}
