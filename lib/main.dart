import 'package:e_commerce/Features/Splash/Presentation/Views/splash_view.dart';
import 'package:e_commerce/core/helper_function/on_generate_routes.dart';
import 'package:e_commerce/core/services/shared_preferences_singleton.dart';
import 'package:e_commerce/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  await SharedPreferencesSingleton.init();
  runApp(const Fruit_hub());
}

class Fruit_hub extends StatelessWidget {
  const Fruit_hub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Cairo",
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale("ar"),
      onGenerateRoute: onGenerateRoute,
      home: SplashView(),
    );
  }
}
        // This is the theme of your application.
