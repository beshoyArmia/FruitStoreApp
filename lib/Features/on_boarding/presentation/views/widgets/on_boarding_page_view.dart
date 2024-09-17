import 'package:e_commerce/Features/on_boarding/presentation/views/widgets/Page_view_item.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatefulWidget {
  const OnBoardingPageView({super.key});

  @override
  State<OnBoardingPageView> createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {
  late PageController pageController;
  var currantPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currantPage = pageController.page!.round();
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
    return PageView(
      children: const [
        PageViewItem(
            image: Assets.imagesPageViewItemImage1,
            packGroundImage: Assets.imagesPageViewItemBackground1,
            subTitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("مرحبا بك في"),
                Text("Fruit"),
                Text("HUB"),
              ],
            )),
        PageViewItem(
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
