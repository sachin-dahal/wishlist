import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/widgets/gradient_raised_button_widget.dart';
import 'package:wishlist/modules/features/authentication/widget/auth_textfield_widget.dart';
import 'package:wishlist/modules/features/presentation/chatbot_results_page.dart';
import 'package:wishlist/modules/features/presentation/request_quotes.dart';
import 'package:wishlist/modules/features/presentation/widget/chat_bubble.dart';

class ChatBotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.only(top: 1.0, left: 5.0, right: 5.0, bottom: 10.0),
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
            Container(
              child: Row(
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
            ),
          ],
        ),
      ),
    );
  }

  Widget _messages() {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: Get.height * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ChatBubble(
                text:
                    "It sounds like you need help fixing your air conditioner. Is that correct?",
                isUser: false,
              ),
              ChatBubble(
                text: "Yes",
                isUser: true,
              ),
              ChatBubble(
                text:
                    "Okay great. Give me a moment while I find you the best HVAC contractors available in your area.",
                isUser: false,
              ),
              ChatBubble(
                text: "Okay thank you",
                isUser: true,
              ),
              ChatBubble(
                text:
                    "Okay great. Give me a moment while I find you the best HVAC contractors available in your area.",
                isUser: false,
              ),
              ChatBubble(
                text: "Okay thank you",
                isUser: true,
              ),
              ChatBubble(
                text:
                    "We found 8 HVAC contractors that may be able to help you. Click 'See Results' to cotact a service provider directly, or click 'Request Quotes' to solicit bids.",
                isUser: false,
              ),
              Column(
                children: [
                  SizedBox(height: Get.height * 0.02),
                  GradientRaisedButton(
                    onPressed: () => Get.to(ChatbotResultsPage()),
                    width: Get.width * 0.3,
                    child: Center(
                      child: Text(
                        "See Results",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: 15.0,
                            color: kPrimaryTextColor1,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  GradientRaisedButton(
                    onPressed: () => Get.to(RequestQuotesPage()),
                    width: Get.width * 0.4,
                    child: Center(
                      child: Text(
                        "Request Quotes",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: 15.0,
                            color: kPrimaryTextColor1,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
              // SizedBox(height: Get.height * 0.02),
              // GradientRaisedButton(
              //   onPressed: () {},
              //   width: Get.width * 0.3,
              //   child: Center(
              //     child: Text(
              //       "See Results",
              //       style: GoogleFonts.lato(
              //         textStyle: TextStyle(
              //           fontSize: 15.0,
              //           color: kPrimaryTextColor1,
              //           fontWeight: FontWeight.w700,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(height: 10.0),
              // GradientRaisedButton(
              //   onPressed: () {},
              //   width: Get.width * 0.1,
              //   child: Center(
              //     child: Text(
              //       "See Results",
              //       style: GoogleFonts.lato(
              //         textStyle: TextStyle(
              //           fontSize: 15.0,
              //           color: kPrimaryTextColor1,
              //           fontWeight: FontWeight.w700,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
