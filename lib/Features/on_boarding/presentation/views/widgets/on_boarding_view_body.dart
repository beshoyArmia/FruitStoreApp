import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/Features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currantestate = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currantestate = pageController.page!.toInt();
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: OnBoardingPageView(
          pageController: pageController,
        )),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColor.Kpcolor,
            color: AppColor.Kpcolor.withOpacity(0.5),
          ),
        ),
        const SizedBox(
          height: 23,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomButton(text: "أبدا الان", onPressed: () {}),
        ),
        const SizedBox(
          height: 43,
        )
      ],
    );
  }
}
