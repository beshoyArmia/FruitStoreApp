import 'package:e_commerce/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(Assets.imagesLeafeSplash),
        SvgPicture.asset(Assets.imagesLeafeSplash),
        SvgPicture.asset(Assets.imagesLeafeSplash),
      ],
    );
  }
}
