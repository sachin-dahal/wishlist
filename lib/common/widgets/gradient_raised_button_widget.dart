import 'package:flutter/material.dart';
import 'package:wishlist/common/utility/colors.dart';

class GradientRaisedButton extends StatelessWidget {
  final Widget child;
  final Function onPressed;
  // final Gradient gradient;
  final double width;
  // final double height;

  GradientRaisedButton({
    @required this.child,
    this.onPressed,
    // this.gradient,
    this.width,
    // this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 35.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        gradient: LinearGradient(
          colors: [
            kBackgroundColor1.withOpacity(0.6),
            kBackgroundColor2,
            kBackgroundColor3,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: kBackgroundColor1.withOpacity(0.4),
            offset: Offset(0.0, 1.5),
            blurRadius: 1.5,
          ),
        ],
      ),
      child: Material(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(5.0),
          splashColor: kBackgroundColor2,
          onTap: onPressed,
          child: child,
        ),
      ),
    );
  }
}
