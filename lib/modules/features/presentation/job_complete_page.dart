import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';
import 'package:wishlist/common/widgets/gradient_raised_button_widget.dart';
import 'package:wishlist/modules/features/controllers/presentation_controllers/job_complete_controller.dart';
import 'package:wishlist/modules/features/presentation/job_summary_page.dart';

class JobCompletePage extends StatelessWidget {
  final JobCompleteController _jobCompleteController =
      Get.put(JobCompleteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.04),
              GetBuilder<JobCompleteController>(
                builder: (_jobCompleteController) {
                  return _jobCompleteController.checkedBox();
                },
              ),
              SizedBox(height: Get.height * 0.08),
              Text(
                "Rate and Review Your Provider",
                style: kNormalTextStyle1.copyWith(
                  fontSize: Get.width * 0.05,
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidStar,
                    size: Get.width * 0.09,
                    color: Colors.yellow[600].withOpacity(0.6),
                  ),
                  FaIcon(
                    FontAwesomeIcons.solidStar,
                    size: Get.width * 0.09,
                    color: Colors.yellow[600].withOpacity(0.6),
                  ),
                  FaIcon(
                    FontAwesomeIcons.solidStar,
                    size: Get.width * 0.09,
                    color: Colors.yellow[600].withOpacity(0.6),
                  ),
                  FaIcon(
                    FontAwesomeIcons.solidStar,
                    size: Get.width * 0.09,
                    color: Colors.yellow[600].withOpacity(0.6),
                  ),
                  FaIcon(
                    FontAwesomeIcons.starHalfAlt,
                    size: Get.width * 0.09,
                    color: Colors.yellow[600].withOpacity(0.6),
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.06),
              _buildTextField(),
              SizedBox(height: Get.height * 0.06),
              Center(
                child: GradientRaisedButton(
                  onPressed: () => Get.to(JobSummaryPage()),
                  width: Get.width * 0.6,
                  child: Center(
                    child: Text(
                      "Confirm and Send Payment",
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
              ),
              SizedBox(height: Get.height * 0.08),
              Center(
                child: GestureDetector(
                  onTap: () => Get.snackbar(
                    "Report",
                    "Your problem will be reported",
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
                    "Report a Problem",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 16.0,
                        color: kBackgroundColor1,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.06),
            ],
          ),
        ),
      ),
    );
  }

  TextField _buildTextField() {
    return TextField(
      maxLines: 5,
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
        hintText: "Enter your review here..",
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
