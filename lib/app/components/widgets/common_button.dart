import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/app_colors.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.buttonTitle,
    required this.onPress,
  });

  final String buttonTitle;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    return SizedBox(
      width: sw,
      height: 50.0,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          elevation: 5.0,
          backgroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(buttonTitle),
      ),
    );
  }
}
