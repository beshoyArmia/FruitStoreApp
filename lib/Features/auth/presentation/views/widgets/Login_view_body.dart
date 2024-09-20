import 'package:e_commerce/core/constant.dart';
import 'package:e_commerce/core/widgets/Custom_Text_form_field.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
          ],
        ),
      ),
    );
  }
}
