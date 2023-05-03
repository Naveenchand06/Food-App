import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/constants.dart';
import 'package:food_app_ui/widgets/card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.account_circle_rounded,
            size: 40.0,
            color: Colors.grey,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Black Adam',
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.grey.shade500,
              ),
            ),
            const Text(
              'blackadam@dc.com',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.qr_code_rounded,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.change_circle,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10.0),
              Column(
                children: [
                  Stack(
                    children: [
                      CardWidget(
                        height: 140.0,
                        child: Image.network(
                          imgUrls[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 140.0,
                        width: sw,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(),
                            Container(
                              height: 50.0,
                              width: sw,
                              alignment: Alignment.bottomLeft,
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.0),
                                    Colors.black.withOpacity(0.1),
                                    Colors.black.withOpacity(0.2),
                                    Colors.black.withOpacity(0.4),
                                    Colors.black.withOpacity(0.6),
                                    Colors.black.withOpacity(0.8),
                                    Colors.black.withOpacity(1)
                                  ],
                                ),
                              ),
                              child: const Text(
                                'Lemon Chicken',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Under 30 min',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                height: 150.0,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 12.0, bottom: 8.0),
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
                              fontSize: 10.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Healthy',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('View All'),
                  )
                ],
              ),
              // const SizedBox(height: 6.0),
              SizedBox(
                height: 150.0,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(
                          right: 8.0, top: 8.0, bottom: 8.0),
                      child: CardWidget(
                        width: sw * 80 / 100,
                        child: Image.network(
                          imgUrls[1],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
