import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_textStyle.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant.dart';
import '../../../../../core/widgets/Custom_Text_form_field.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizentalPadding),
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
              const SizedBox(
                height: 16,
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
                height: 32,
              ),
              CustomTermsWidget(),
              const SizedBox(
                height: 33,
              ),
              CustomButton(text: "إنشاء حساب جديد", onPressed: () {}),
              const SizedBox(
                height: 33,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTermsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value:
              false, // Manage state for this checkbox in your real implementation
          onChanged: (value) {
            // Handle checkbox state change
          },
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: " من خلال إنشاء حساب ، فإنك توافق على",
                style: textStyle.semibold13.copyWith(color: Color(0xff949D9E)),
              ),
              TextSpan(
                text: "الشروط والاحكام",
                style:
                    textStyle.semibold13.copyWith(color: AppColor.primaryColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
