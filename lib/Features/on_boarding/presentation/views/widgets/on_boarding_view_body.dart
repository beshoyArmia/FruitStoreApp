import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/Features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: OnBoardingPageView()),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColor.Kpcolor,
            color: AppColor.Kpcolor.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
