import 'package:e_commerce/Features/auth/presentation/views/widgets/Login_view_body.dart';
import 'package:e_commerce/core/utils/app_textStyle.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'login page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(context, title: "تسجيل الدخول"),
      body: const LoginViewBody(),
    );
  }
}

AppBar BuildAppBar(context, {required String title}) {
  return AppBar(
    leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_new)),
    centerTitle: true,
    title: Text(
      title,
      style: textStyle.bold19,
    ),
  );
}
