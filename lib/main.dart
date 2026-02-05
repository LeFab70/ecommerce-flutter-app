import 'controllers/main.screen.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'root/app.ecommerce.dart';

// void main() => runApp(const AppEcommerce());
void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>MainScreenNotifier())
      ],
      child: const AppEcommerce()));
}
