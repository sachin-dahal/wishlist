import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';
import 'package:wishlist/common/widgets/gradient_raised_button_widget.dart';
import 'package:wishlist/modules/features/controllers/presentation_controllers/request_quotes_controller.dart';
import 'package:wishlist/modules/features/presentation/request_quotes_confirmation.dart';

class RequestQuotesPage extends StatelessWidget {
  final RequestQuotesController _requestQuotesController =
      Get.put(RequestQuotesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding:
            EdgeInsets.only(top: 1.0, left: 15.0, right: 15.0, bottom: 10.0),
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
              Text(
                "HVAC Quote Request",
                style: kNormalTextStyle1,
              ),
              SizedBox(height: Get.height * 0.02),
              _buildTextField(),
              SizedBox(height: Get.height * 0.03),
              GetBuilder<RequestQuotesController>(
                builder: (_requestQuotesController) {
                  return _requestQuotesController.dropDownButton1();
                },
              ),
              SizedBox(height: Get.height * 0.025),
              GetBuilder<RequestQuotesController>(
                builder: (_requestQuotesController) {
                  return _requestQuotesController.dropDownButton2();
                },
              ),
              SizedBox(height: Get.height * 0.05),
              Column(
                children: [
                  Text("Upload photos/video if applicable:",
                      style: kNormalTextStyle1.copyWith(
                          fontSize: Get.width * 0.04)),
                  SizedBox(height: Get.height * 0.03),
                  FaIcon(
                    FontAwesomeIcons.camera,
                    size: Get.height * 0.07,
                    color: kPrimaryTextColor2,
                  ),
                  SizedBox(height: Get.height * 0.06),
                  GradientRaisedButton(
                    onPressed: () => Get.to(RequestQuotesConfirmationPage()),
                    width: Get.width * 0.5,
                    child: Center(
                      child: Text(
                        "Submit Quote Request",
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextField _buildTextField() {
    return TextField(
      maxLines: 8,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: Get.width * 0.04,
          color: kPrimaryTextColor1,
        ),
      ),
      decoration: InputDecoration(
        // isDense: true,
        // contentPadding: EdgeInsets.symmetric(vertical: 20.0),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white60),
            borderRadius: BorderRadius.circular(10.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white60),
            borderRadius: BorderRadius.circular(10.0)),
        hintText:
            "Describe the problem that you're experiencing with as much detail as possible...",
        hintStyle: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: Get.width * 0.04,
            color: kPrimaryTextColor1.withOpacity(0.6),
          ),
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white60),
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
