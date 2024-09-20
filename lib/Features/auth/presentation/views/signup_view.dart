import 'package:e_commerce/Features/auth/presentation/views/widgets/Login_view_body.dart';
import 'package:e_commerce/Features/auth/presentation/views/widgets/signup_view_body.dart';
import 'package:e_commerce/core/widgets/Custom_app_bar.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = 'signup_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "حساب جديد"),
      body: const SignupViewBody(),
    );
  }
}
