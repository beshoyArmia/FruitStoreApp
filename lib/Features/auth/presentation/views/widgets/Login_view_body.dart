import 'package:e_commerce/core/constant.dart';
import 'package:e_commerce/core/widgets/Custom_Text_form_field.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kButtonHorizentalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextFormField(),
          ],
        ),
      ),
    );
  }
}
