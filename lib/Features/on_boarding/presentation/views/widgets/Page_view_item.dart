import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.packGroundImage,
      required this.subTitle,
      required this.title,
      this.isvisible = false});
  final String image, packGroundImage;
  final String subTitle;
  final Widget title;
  final bool isvisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                  child: SvgPicture.asset(
                packGroundImage,
                fit: BoxFit.fill,
              )),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              Visibility(
                visible: isvisible,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                  child: Text("تخط"),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 65,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
