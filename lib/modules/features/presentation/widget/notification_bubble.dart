import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';

class NotificationBubble extends StatelessWidget {
  final String text;
  final String imgUrl;
  final String imgHeroTag;

  NotificationBubble({this.text, this.imgUrl, this.imgHeroTag});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: kPrimaryTextColor1,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Get.height * 0.15,
            child: Hero(
              tag: imgHeroTag,
              child: Image(
                image: AssetImage(imgUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: Get.width * 0.025),
              child: Text(
                text,
                style: kNormalTextStyle1.copyWith(fontSize: Get.width * 0.035),
                textAlign: TextAlign.justify,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
