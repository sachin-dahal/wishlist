import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/text_styles.dart';

class JobCompleteController extends GetxController {
  bool _value = false;

  Widget checkedBox() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.scale(
          scale: Get.width * 0.003,
          child: Checkbox(
            value: _value,
            onChanged: (bool value) {
              _value = value;
              update();
            },
          ),
        ),
        SizedBox(
          width: Get.height * 0.015,
        ),
        Flexible(
          child: Text(
            "By checking this box, I agree that the job has been performed satisfactorily. I agree to release the agreed upon funds to my service provider.",
            style: GoogleFonts.poppins(
              textStyle: kNormalTextStyle1.copyWith(fontSize: Get.width * 0.04),
            ),
            textAlign: TextAlign.justify,
          ),
        )
      ],
    );
  }
}
// checkColor: kBackgroundColor1,
// activeColor: kDarkTextColor2,
// value: _value,
// onChanged: (bool value) {
//   _value = value;
//   update();
// },
//"By checking this box, I agree that the job has been performed satisfactorily. I agree to release the agreed upon funds to my service provider."
