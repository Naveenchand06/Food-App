import 'package:flutter/material.dart';
import 'package:food_app_ui/app/components/widgets/card_widget.dart';

class ShadedFoodCard extends StatelessWidget {
  const ShadedFoodCard({
    super.key,
    required this.imageUrl,
    required this.shadeTitle,
    this.cardHeight = 140.0,
    this.shadeHeight = 50.0,
    this.shadeColor = Colors.black,
  });

  final String imageUrl;
  final String shadeTitle;
  final double cardHeight;
  final double shadeHeight;
  final Color shadeColor;

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        CardWidget(
          radius: 20.0,
          height: cardHeight,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: cardHeight,
          width: sw,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Container(
                height: shadeHeight,
                width: sw,
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      shadeColor.withOpacity(0.0),
                      shadeColor.withOpacity(0.1),
                      shadeColor.withOpacity(0.2),
                      shadeColor.withOpacity(0.4),
                      shadeColor.withOpacity(0.6),
                      shadeColor.withOpacity(0.8),
                      shadeColor.withOpacity(1)
                    ],
                  ),
                ),
                child: Text(
                  shadeTitle,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
