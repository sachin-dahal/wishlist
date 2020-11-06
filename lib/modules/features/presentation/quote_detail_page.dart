import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';
import 'package:wishlist/common/widgets/gradient_raised_button_widget.dart';
import 'package:wishlist/modules/features/presentation/job_in_progress_page.dart';

class QuoteDetailPage extends StatelessWidget {
  final String text;
  final String imgUrl;
  final double price;
  final String timeOfArrival;
  final double timeToComplete;
  final String quoteNotes;
  final String imgHeroTag;

  QuoteDetailPage({
    this.text,
    this.imgUrl,
    this.price,
    this.timeOfArrival,
    this.timeToComplete,
    this.quoteNotes,
    this.imgHeroTag,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: Get.height * 0.2,
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
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: Get.width * 0.035,
                            color: kPrimaryTextColor2,
                          ),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.04),
              Text(
                "Estimate Price: \$ ${price.toString()}",
                style: kNormalTextStyle1,
              ),
              SizedBox(height: Get.height * 0.02),
              Text(
                "Time of Arrival: $timeOfArrival",
                style: kNormalTextStyle1,
              ),
              SizedBox(height: Get.height * 0.02),
              Text(
                "Time to Complete: ${timeToComplete.toString()} hours",
                style: kNormalTextStyle1,
              ),
              SizedBox(height: Get.height * 0.04),
              Text(
                "Quote Notes:",
                style: kNormalTextStyle1,
              ),
              SizedBox(height: Get.height * 0.02),
              Text(
                quoteNotes,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: Get.width * 0.035,
                    color: kPrimaryTextColor2,
                  ),
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: Get.height * 0.06),
              Center(
                child: GradientRaisedButton(
                  onPressed: () => Get.to(JobinProgressPage()),
                  width: Get.width * 0.3,
                  child: Center(
                    child: Text(
                      "Confirm",
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
              SizedBox(height: Get.height * 0.06),
            ],
          ),
        ),
      ),
    );
  }
}
