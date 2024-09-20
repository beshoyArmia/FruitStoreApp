import 'package:e_commerce/Features/auth/presentation/views/widgets/Login_view_body.dart';
import 'package:e_commerce/core/utils/app_textStyle.dart';
import 'package:e_commerce/core/widgets/Custom_app_bar.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'login page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "تسجيل الدخول"),
      body: const LoginViewBody(),
    );
  }
}
