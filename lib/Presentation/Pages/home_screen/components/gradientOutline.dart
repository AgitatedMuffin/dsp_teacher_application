import 'package:dsp_teacher_application/Presentation/Theme/theme.dart';
import 'package:flutter/material.dart';

class GradientOutline extends StatelessWidget {
  const GradientOutline({
    Key key,
    @required this.chld,
    @required this.size,
    this.radius = 32,
  }) : super(key: key);
  final Widget chld;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(1, 0.0),
          colors: [AppColors.cPurple, AppColors.cGreen],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.cWhite,
          borderRadius: BorderRadius.all(Radius.circular(radius - 3)),
        ),
        child: chld,
      ),
    );
  }
}
