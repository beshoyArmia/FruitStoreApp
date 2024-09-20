import 'package:e_commerce/core/constant.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_textStyle.dart';
import 'package:e_commerce/core/widgets/Custom_Text_form_field.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
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
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "نسيت كلمة المرور؟",
                  style: textStyle.semibold13
                      .copyWith(color: AppColor.lightPrimaryColor),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            CustomButton(text: "تسجيل الدخول", onPressed: () {}),
            const SizedBox(
              height: 33,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "لا تمتلك حساب؟ ",
                  style:
                      textStyle.semibold16.copyWith(color: Color(0xff949D9E)),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    " قم بإنشاء حساب",
                    style: textStyle.semibold16
                        .copyWith(color: AppColor.primaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
