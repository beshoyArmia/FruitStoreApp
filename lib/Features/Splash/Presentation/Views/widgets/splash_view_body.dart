import 'package:e_commerce/Features/auth/presentation/views/login_view.dart';
import 'package:e_commerce/Features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:e_commerce/core/constant.dart';
import 'package:e_commerce/core/services/shared_preferences_singleton.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  @override
  void initState() {
    excuteNavigatoinLogic();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.imagesLeafeSplash),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogoSplash),
        SvgPicture.asset(Assets.imagesButtonSplash),
      ],
    );
  }

  void excuteNavigatoinLogic() {
    bool seen = SharedPreferencesSingleton.getBool(isOnBordingViewSeenKEY);
    Future.delayed(const Duration(seconds: 3), () {
      if (seen) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
