import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant.dart';
import '../../../../../core/widgets/Custom_Text_form_field.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kButtonHorizentalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomTextFormField(
              textInputType: TextInputType.name,
              hintText: "الاسم كامل",
            ),
            const CustomTextFormField(
              textInputType: TextInputType.emailAddress,
              hintText: "البريد الالكتروني",
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              textInputType: TextInputType.visiblePassword,
              hintText: "كلمة المرور",
              icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove_red_eye,
                    color: Color(0xffC9CECF),
                  )),
            ),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomButton(text: "إنشاء حساب جديد", onPressed: () {}),
            const SizedBox(
              height: 33,
            ),
          ],
        ),
      ),
    );
  }
}
