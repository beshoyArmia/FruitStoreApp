import 'package:e_commerce/Features/on_boarding/presentation/views/widgets/Page_view_item.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_textStyle.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  final PageController pageController;
  const OnBoardingPageView({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
            isvisible: true,
            image: Assets.imagesPageViewItemImage1,
            packGroundImage: Assets.imagesPageViewItemBackground1,
            subTitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "مرحبا بك في",
                  style: textStyle.bold23,
                ),
                const SizedBox(
                  width: 9,
                ),
                Text(
                  "HUB",
                  style:
                      textStyle.bold23.copyWith(color: AppColor.secondryColor),
                ),
                Text(
                  "Fruit",
                  style:
                      textStyle.bold23.copyWith(color: AppColor.primaryColor),
                ),
              ],
            )),
        const PageViewItem(
            isvisible: false,
            image: Assets.imagesPageViewItemImage2,
            packGroundImage: Assets.imagesPageViewItemBackground2,
            subTitle:
                'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
            title: Text(
              "أبحث و تسوق",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.w700,
                  height: 0),
            )),
      ],
    );
  }
}
