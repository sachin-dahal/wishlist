import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';
import 'package:wishlist/common/widgets/gradient_raised_button_widget.dart';
import 'package:wishlist/modules/features/authentication/widget/auth_textfield_widget.dart';
import 'package:wishlist/modules/features/presentation/job_complete_page.dart';
import 'package:wishlist/modules/features/presentation/widget/chat_bubble.dart';

class JobinProgressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Get.height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Job in Progress",
                    style: kNormalTextStyle1.copyWith(
                      color: kDarkTextColor2,
                      fontWeight: FontWeight.w600,
                      fontSize: Get.width * 0.04,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.to(JobCompletePage()),
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.checkSquare,
                          size: Get.width * 0.05,
                        ),
                        SizedBox(width: Get.width * 0.015),
                        Text(
                          "Mark as Complete",
                          style: kNormalTextStyle1.copyWith(
                            color: kDarkTextColor2,
                            fontWeight: FontWeight.w600,
                            fontSize: Get.width * 0.04,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.01),
              Container(
                height: Get.height * 0.9,
                width: Get.width,
                child: Image.asset(
                  "assets/images/maps.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: Get.height * 0.13,
        width: Get.width * 0.18,
        child: FloatingActionButton(
          backgroundColor: kBackgroundColor2,
          elevation: 10.0,
          onPressed: () {
            //_buildShowModalBottomSheet(context);
            Get.bottomSheet(BottomSheet(
                onClosing: () => Get.back(),
                backgroundColor: kBackgroundColor1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                builder: (context) {
                  return Container(
                    height: Get.height,
                    width: Get.width,
                    padding: EdgeInsets.only(
                        top: 1.0, left: 5.0, right: 5.0, bottom: 10.0),
                    decoration: BoxDecoration(
                      //color: kBackgroundColor2,

                      gradient: LinearGradient(
                        colors: <Color>[
                          kBackgroundColor1,
                          kBackgroundColor2,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(child: _messages()),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.camera,
                              color: kPrimaryTextColor1,
                            ),
                            SizedBox(width: 15.0),
                            Expanded(
                              child: AuthTextField(
                                hintText: "Type messages here...",
                                onChanged: (value) {},
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                }));
          },
          child: FaIcon(FontAwesomeIcons.commentAlt),
        ),
      ),
    );
  }

  Widget _messages() {
    return ListView(
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ChatBubble(
                text: "Hey there, I am on my way",
                isUser: false,
              ),
              ChatBubble(
                text: "Oh! thats great",
                isUser: true,
              ),
              ChatBubble(
                text: "Now, I'm on your area, near to your house.",
                isUser: false,
              ),
              ChatBubble(
                text: "Okay. See you soon.",
                isUser: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
