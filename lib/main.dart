import 'package:e_commerce/Features/Splash/Presentation/Views/splash_view.dart';
import 'package:e_commerce/core/helper_function/on_generate_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Fruit_hub());
}

class Fruit_hub extends StatelessWidget {
  const Fruit_hub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: onGenerateRoute,
      home: SplashView(),
    );
  }
}
        // This is the theme of your application.
