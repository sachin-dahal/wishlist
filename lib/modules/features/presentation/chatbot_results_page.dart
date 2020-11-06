import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/modules/data/quotes_data.dart';
import 'package:wishlist/modules/features/presentation/service_provider_detail_page.dart';
import 'package:wishlist/modules/features/presentation/widget/notification_bubble.dart';

class ChatbotResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              kBackgroundColor1,
              kBackgroundColor2,
              kBackgroundColor3
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.045),
            Text(
              "HVAC contractors in your area:",
              style: TextStyle(
                fontSize: Get.width * 0.05,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.1,
                color: kDarkTextColor2,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: quoteDataList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: kDarkTextColor1.withOpacity(0.4),
                          onTap: () => Get.to(
                            ServiceProviderDetailPage(
                              text: quoteDataList[index].bio,
                              imgUrl: quoteDataList[index].imgUrl,
                              imgHeroTag: quoteDataList[index].imgHeroTag,
                            ),
                          ),
                          // onTap: () => Get.to(
                          //   QuoteDetailPage(
                          //       text: quoteDataList[index].text,
                          //       imgUrl: quoteDataList[index].imgUrl,
                          //       price: quoteDataList[index].price,
                          //       timeOfArrival:
                          //           quoteDataList[index].timeOfArrival,
                          //       timeToComplete:
                          //           quoteDataList[index].timeToComplete,
                          //       quoteNotes: quoteDataList[index].quoteNotes,
                          //       imgHeroTag: quoteDataList[index].imgHeroTag),
                          // ),
                          child: NotificationBubble(
                            text: quoteDataList[index].bio,
                            imgUrl: quoteDataList[index].imgUrl,
                            imgHeroTag: quoteDataList[index].imgHeroTag,
                          ),
                        ),
                      ),
                      SizedBox(height: Get.height * 0.015),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
