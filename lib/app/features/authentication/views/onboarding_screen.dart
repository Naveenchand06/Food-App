import 'package:flutter/material.dart';
import 'package:food_app_ui/app/components/widgets/simple_button.dart';
import 'package:food_app_ui/app/features/authentication/views/onboard/onboard_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              OnBoardPage(num: 0),
              OnBoardPage(num: 1),
              OnBoardPage(num: 2),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.65),
            child: SimpleButton(
              text: 'Next',
              onPress: () {
                debugPrint('Controller  -> ${_controller.page}');
              },
            ),
          ),
          Container(
            alignment: const Alignment(0, 0.85),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
            ),
          ),
        ],
      ),
    );
  }
}
