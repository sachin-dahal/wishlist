import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/modules/features/authentication/login_page.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
        seconds: 3,
        navigateAfterSeconds: LoginPage(),
        //navigateAfterSeconds: RequestQuotesConfirmationPage(),
        gradientBackground: LinearGradient(
          colors: <Color>[
            kBackgroundColor1,
            kBackgroundColor2,
            kBackgroundColor3
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        image: Image.asset(
          "assets/images/logo.png",
        ),
        photoSize: Get.height * 0.11,
      ),
    );
  }
}
