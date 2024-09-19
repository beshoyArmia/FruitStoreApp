import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffF9FAFA),
        border: customOutLineInputBorder(),
      ),
    );
  }

  OutlineInputBorder customOutLineInputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: Color(0XFFF9FAFA)),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    );
  }
}
