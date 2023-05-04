import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/app_colors.dart';

class SectionHeadingWidget extends StatelessWidget {
  const SectionHeadingWidget({
    super.key,
    required this.title,
    this.buttonText,
  });

  final String title;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        buttonText == null
            ? const SizedBox()
            : TextButton(
                onPressed: () {},
                child: Text(
                  buttonText!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 10.0,
                    color: AppColor.primaryColor,
                  ),
                ),
              )
      ],
    );
  }
}
