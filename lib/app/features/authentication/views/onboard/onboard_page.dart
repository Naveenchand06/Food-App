import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_ui/utils/app_colors.dart';

class OnBoardPage extends StatelessWidget {
  OnBoardPage({
    super.key,
    required this.num,
  });

  final int num;

  final List<String> imgs = [
    'assets/images/onboard-illus-1.svg',
    'assets/images/onboard-illus-2.svg',
    'assets/images/onboard-illus-3.svg'
  ];

  final List<String> titles = [
    'Anyone can cook',
    'Explore recipes',
    'New Recipes every week'
  ];

  final List<String> subTitles = [
    'Easy recipes which you don’t have to worry about the complex process !',
    'You can find N’ number of dishes in Foodie. Make sure to give a try everyday !',
    'Tired of cooking same dish again and again? Foodie is here to lift the bear ! Enjoy brand new recipes every week !'
  ];

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(height: sh * 20 / 100),
        SvgPicture.asset(
          imgs[num],
          height: sh * 30 / 100,
          width: sw * 60 / 100,
        ),
        const SizedBox(height: 40.0),
        Text(
          titles[num],
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24.0,
            color: AppColor.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20.0),
        SizedBox(
          width: sw * 80 / 100,
          child: Text(
            subTitles[num],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14.0,
              color: AppColor.primaryColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
