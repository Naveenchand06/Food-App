import 'package:flutter/material.dart';
import 'package:food_app_ui/app/components/widgets/card_widget.dart';
import 'package:food_app_ui/app/features/home/widgets/section_heading_widget.dart';
import 'package:food_app_ui/app/features/home/widgets/shaded_food_card.dart';
import 'package:food_app_ui/utils/contants/image_urls.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Let's cook something",
                contentPadding: const EdgeInsets.all(0.0),
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            const SectionHeadingWidget(
              title: 'Trending',
              buttonText: 'See all',
            ),
            const SizedBox(height: 10.0),
            ShadedFoodCard(imageUrl: imgUrls[0], shadeTitle: 'Lemon Chicken'),
            const SizedBox(height: 10.0),
            const SectionHeadingWidget(
              title: 'Under 30 min',
              buttonText: 'See all',
            ),
            SizedBox(
              height: 150.0,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(
                        right: 12.0, bottom: 8.0, top: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CardWidget(
                          width: 120.0,
                          child: Image.network(
                            imgUrls[1],
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        const Text(
                          'Chilli spaghetti',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 6.0),
            const SectionHeadingWidget(
              title: 'Something healthy',
            ),
            const SizedBox(height: 16.0),
            ShadedFoodCard(imageUrl: imgUrls[2], shadeTitle: 'Veggie Salad'),
            const SizedBox(height: 10.0),
            const SectionHeadingWidget(
              title: 'Made for you',
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              height: 150.0,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(
                        right: 12.0, bottom: 8.0, top: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CardWidget(
                          width: 120.0,
                          child: Image.network(
                            imgUrls[1],
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        const Text(
                          'Chilli spaghetti',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 6.0),
            const SectionHeadingWidget(
              title: 'Popular',
            ),
            const SizedBox(height: 6.0),
            SizedBox(
              height: 142.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    width: 120.0,
                    margin: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.network(
                            imgUrls[3],
                            fit: BoxFit.cover,
                            height: 100.0,
                            width: 100.0,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        const Text(
                          'Chilli ',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              height: 142.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    width: 120.0,
                    margin: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.network(
                            imgUrls[3],
                            fit: BoxFit.cover,
                            height: 100.0,
                            width: 100.0,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        const Text(
                          'Chilli ',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
