import 'package:e_commerce/core/utils/app_textStyle.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.textInputType,
      this.icon});
  final String hintText;
  final TextInputType textInputType;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: icon,
        hintText: hintText,
        hintStyle: textStyle.bold13.copyWith(color: Color(0xff949D9E)),
        filled: true,
        fillColor: const Color(0xffF9FAFA),
        border: customOutLineInputBorder(),
        enabledBorder: customOutLineInputBorder(),
      ),
    );
  }

  OutlineInputBorder customOutLineInputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: Color(0XFFE6E9E9), width: 1),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    );
  }
}
