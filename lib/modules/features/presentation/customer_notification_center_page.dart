import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';
import 'package:wishlist/modules/data/quotes_data.dart';
import 'package:wishlist/modules/features/presentation/quote_detail_page.dart';
import 'package:wishlist/modules/features/presentation/widget/notification_bubble.dart';

class CustomerNotificationCenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 5.0),
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
            SizedBox(height: Get.height * 0.04),
            ButtonTheme(
              buttonColor: kTextFieldBackGroundColor.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              minWidth: double.infinity,
              height: Get.height * 0.068,
              child: RaisedButton(
                onPressed: () => Get.snackbar(
                  "Notifications",
                  "All messages are read.",
                  colorText: kPrimaryTextColor1,
                  snackPosition: SnackPosition.BOTTOM,
                  duration: Duration(seconds: 2),
                  backgroundColor: kBackgroundColor1.withOpacity(0.8),
                  backgroundGradient: LinearGradient(
                    colors: <Color>[
                      kBackgroundColor1,
                      kBackgroundColor2,
                      kBackgroundColor3
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Text(
                  "Mark all as read",
                  style: TextStyle(
                    fontSize: Get.width * 0.05,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.1,
                    color: kDarkTextColor2,
                  ),
                ),
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
                            QuoteDetailPage(
                                text: quoteDataList[index].text,
                                imgUrl: quoteDataList[index].imgUrl,
                                price: quoteDataList[index].price,
                                timeOfArrival:
                                    quoteDataList[index].timeOfArrival,
                                timeToComplete:
                                    quoteDataList[index].timeToComplete,
                                quoteNotes: quoteDataList[index].quoteNotes,
                                imgHeroTag: quoteDataList[index].imgHeroTag),
                          ),
                          child: NotificationBubble(
                            text: quoteDataList[index].text,
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
