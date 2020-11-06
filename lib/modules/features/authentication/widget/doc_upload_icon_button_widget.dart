import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';

class DocUploadIconButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  DocUploadIconButton({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.cloudUploadAlt,
            color: kPrimaryTextColor2,
            size: Get.height * 0.08,
          ),
          onPressed: onPressed,
        ),
        SizedBox(height: Get.height * 0.02),
        Text(
          text,
          style: kNormalTextStyle1,
        ),
      ],
    );
  }
}
