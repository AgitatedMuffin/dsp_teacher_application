import 'package:dsp_teacher_application/Presentation/global_components/ArabicImage.dart';
import 'package:dsp_teacher_application/Presentation/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/GradientHeading.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Stack(children: <Widget>[
      ArabicImage(
        bottom: -size.height / 3,
        left: -size.height / 3,
        size: size.height / 1.5,
        opacity: 0.05,
        blendMode: BlendMode.srcATop,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: size.height / 5,
          ),
          GradientHeading(
            text: 'Let\'s get started',
          ),
          SizedBox(
            height: size.height / 5,
          ),
          Container(
            height: 80,
            width: 80,
            child: FloatingActionButton(
                focusColor: AppColors.cDarkGrey,
                elevation: 2,
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/MainScreen');
                },
                child: SvgPicture.asset(
                  'lib/Presentation/Images/arrow_f.svg',
                  width: 24,
                  height: 24,
                  semanticsLabel: 'Arrow',
                  color: AppColors.cWhite,
                )),
          )
        ],
      ),
    ]));
  }
}
