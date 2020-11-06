import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';

class ServiceProviderCategoriesController extends GetxController {
  Map<String, bool> values = {
    "Legal": false,
    "Medical": false,
    "Home Repair": false,
    "Landscaping": false,
    "Moving": false,
    "Auto": false,
    "Hauling": false,
    "...1": false,
    "...2": false,
    "...3": false,
    "...4": false,
  };

  Widget checkedBox() {
    return Expanded(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: values.keys.map((String key) {
          return CheckboxListTile(
              title: Text(key,
                  style: GoogleFonts.poppins(
                      textStyle: kNormalTextStyle1.copyWith(
                          fontSize: Get.width * 0.04))),
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: kBackgroundColor1,
              activeColor: kDarkTextColor2,
              value: values[key],
              onChanged: (bool value) {
                values[key] = value;
                update();
              });
        }).toList(),
      ),
    );
  }
}
