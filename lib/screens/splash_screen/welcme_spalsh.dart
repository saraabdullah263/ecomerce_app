import 'package:ecomerce_app/common/app_color.dart';
import 'package:ecomerce_app/common/app_image.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class WelcmeSpalsh extends StatefulWidget {
  static const String routeName = 'WelcmeSpalshOne';
  const WelcmeSpalsh({super.key});

  @override
  State<WelcmeSpalsh> createState() => _WelcmeSpalshState();
}

class _WelcmeSpalshState extends State<WelcmeSpalsh> {
  int positionNumber = 0;
  final int totalPages = 3;

  final List<Map<String, String>> splashContent = [
    {
      "image": AppImage.fashionShopImage,
      "title": "Choose Products",
      "description":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    },
    {
      "image": AppImage.salesConsultingImage,
      "title": "Make Payment",
      "description":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    },
    {
      "image": AppImage.shoppingBagImage,
      "title": "Get Your Order",
      "description":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    },
  ];

  void nextPage() {
    setState(() {
      if (positionNumber < totalPages - 1) {
        positionNumber++;
      }
      else{}
    });
  }

  void prevPage() {
    if (positionNumber > 0) {
      setState(() {
        positionNumber--;
      });
    }
  }

  void skipToLast() {
    setState(() {
      positionNumber = totalPages - 1;
    });
    // Navigator.of(context).pushNamed(WelcomeSplashTwo.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${positionNumber + 1} / $totalPages',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: skipToLast,
                    child: Text('Skip',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                  )
                ],
              ),
            ),
            Spacer(flex: 1),
            Image.asset(splashContent[positionNumber]["image"]!),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(splashContent[positionNumber]["title"]!,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                splashContent[positionNumber]["description"]!,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColor.greyColor),
              ),
            ),
            Spacer(flex: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (positionNumber > 0)
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: prevPage,
                      child: Text(
                        'Prev',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColor.greyColor),
                      ),
                    ),
                  )
                else
                 SizedBox(width: 60),
                DotsIndicator(
                  dotsCount: totalPages,
                  position: positionNumber,
                  decorator: DotsDecorator(
                    activeColor: Colors.black,
                    size: const Size.square(9.0),
                    activeSize: const Size(40.0, 10.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: nextPage,
                    child: Text(
                      positionNumber == totalPages - 1 ? 'Get Started' : 'Next',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColor.primaryColor),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
