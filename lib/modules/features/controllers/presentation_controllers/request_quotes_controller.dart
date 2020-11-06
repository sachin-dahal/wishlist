import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';

class RequestQuotesController extends GetxController {
  int _value1 = 1;
  int _value2 = 1;

  int get values1 => _value1;
  int get values2 => _value2;

  Widget dropDownButton1() {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: kPrimaryTextColor1)),
      width: Get.width * 0.92,
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.01),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            value: _value1,
            dropdownColor: Colors.blueAccent[400],
            iconEnabledColor: kBackgroundColor1,
            items: [
              DropdownMenuItem(
                  child: Text(
                    "How long have you had the issue?",
                    style: kNormalTextStyle1.copyWith(
                      fontSize: Get.width * 0.045,
                    ),
                  ),
                  value: 1),
              DropdownMenuItem(
                  child: Text(
                    "Yesterday",
                    style: kNormalTextStyle1.copyWith(
                      fontSize: Get.width * 0.04,
                    ),
                  ),
                  value: 2),
              DropdownMenuItem(
                  child: Text(
                    "Since 3 days",
                    style: kNormalTextStyle1.copyWith(
                      fontSize: Get.width * 0.04,
                    ),
                  ),
                  value: 3),
              DropdownMenuItem(
                  child: Text(
                    "Since a week",
                    style: kNormalTextStyle1.copyWith(
                      fontSize: Get.width * 0.04,
                    ),
                  ),
                  value: 4),
              DropdownMenuItem(
                  child: Text(
                    "Since a month",
                    style: kNormalTextStyle1.copyWith(
                      fontSize: Get.width * 0.04,
                    ),
                  ),
                  value: 5)
            ],
            onChanged: (value) {
              _value1 = value;
              update();
            }),
      ),
    );
  }

  Widget dropDownButton2() {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: kPrimaryTextColor1)),
      width: Get.width * 0.92,
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.01),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            value: _value2,
            dropdownColor: Colors.blueAccent[400],
            iconEnabledColor: kBackgroundColor1,
            items: [
              DropdownMenuItem(
                  child: Text(
                    "How urgent is the matter?",
                    style: kNormalTextStyle1.copyWith(
                      fontSize: Get.width * 0.045,
                    ),
                  ),
                  value: 1),
              DropdownMenuItem(
                  child: Text(
                    "Extremely Urgent",
                    style: kNormalTextStyle1.copyWith(
                      fontSize: Get.width * 0.04,
                    ),
                  ),
                  value: 2),
              DropdownMenuItem(
                  child: Text(
                    "Not very urgent",
                    style: kNormalTextStyle1.copyWith(
                      fontSize: Get.width * 0.04,
                    ),
                  ),
                  value: 3),
              DropdownMenuItem(
                  child: Text(
                    "Not so urgent",
                    style: kNormalTextStyle1.copyWith(
                      fontSize: Get.width * 0.04,
                    ),
                  ),
                  value: 4),
            ],
            onChanged: (value) {
              _value2 = value;
              update();
            }),
      ),
    );
  }
}
