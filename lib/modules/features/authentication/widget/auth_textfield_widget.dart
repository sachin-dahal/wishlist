import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';

class AuthTextField extends StatelessWidget {
  final String hintText;
  final Function onChanged;
  final double height;

  AuthTextField({
    @required this.hintText,
    @required this.onChanged,
    this.height = 14.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: kDarkTextColor1,
            offset: Offset(0.0, 0.2),
            blurRadius: 8.0,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          color: kTextFieldBackGroundColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: TextField(
          onChanged: onChanged,
          cursorColor: kPrimaryTextColor2,
          style: TextStyle(
            fontSize: Get.width * 0.045,
            color: kPrimaryTextColor2,
          ),
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: height,
            ),
            filled: true,
            fillColor: kTextFieldBackGroundColor.withOpacity(0.5),
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 14.0,
                color: kBackgroundColor2.withOpacity(0.6),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: kBackgroundColor2,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
