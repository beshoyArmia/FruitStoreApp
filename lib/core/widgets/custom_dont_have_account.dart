import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_textStyle.dart';
import 'package:flutter/material.dart';

Row customDontHaveAccount() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "لا تمتلك حساب؟ ",
        style: textStyle.semibold16.copyWith(color: const Color(0xff949D9E)),
      ),
      GestureDetector(
        onTap: () {},
        child: Text(
          " قم بإنشاء حساب",
          style: textStyle.semibold16.copyWith(color: AppColor.primaryColor),
        ),
      ),
    ],
  );
}
