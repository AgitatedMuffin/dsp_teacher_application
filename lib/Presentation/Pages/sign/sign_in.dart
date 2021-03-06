import 'package:dsp_teacher_application/Presentation/global_components/ArabicImage.dart';
import 'package:dsp_teacher_application/Presentation/Global_components/BackGroundGradient.dart';
import 'package:dsp_teacher_application/Presentation/Pages/sign/components/InputField.dart';
import 'package:dsp_teacher_application/Presentation/Pages/sign/components/button.dart';
import 'package:dsp_teacher_application/Presentation/Pages/sign/components/buttonicon.dart';
import 'package:dsp_teacher_application/Presentation/Pages/sign/components/dividingline.dart';
import 'package:dsp_teacher_application/Presentation/Theme/theme.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          BackGroundGradient(),
          ArabicImage(top: -150, left: -200, size: size.height / 1.5),
          ArabicImage(bottom: -150, left: -200, size: size.height / 1.5),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 72),
            child: Container(
              height: size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: size.width * 0.8,
                    child: inputfield(size, AppColors.cWhite, AppColors.cWhite,
                        AppColors.cWhite, 'Email', 'email', true),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: inputfield(size, AppColors.cWhite, AppColors.cWhite,
                        AppColors.cWhite, 'Password', 'key', true,
                        isPass: true),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: Button(
                      size: size,
                      text: 'LOG IN',
                      textcolor: AppColors.cGreen,
                      buttoncolor: AppColors.cWhite,
                      onButtonPress: () {},
                      // destination: , //main screen
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: Button(
                      size: size,
                      text: 'SIGN UP',
                      textcolor: AppColors.cWhite,
                      buttoncolor: AppColors.cGreen,
                      onButtonPress: () async {
                        await Future.delayed(Duration(milliseconds: 250), () {
                          Navigator.of(context).pushNamed('/SignUp');
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: DividingLine(
                      size: size,
                      text: 'Or Login With',
                      color: AppColors.cWhite,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 48,
                    width: size.width * 0.8,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: ButtonIcon(
                            size: size,
                            text: 'FACEBOOK',
                            icon: 'facebook',
                            iconcolor: Colors.blue,
                            textcolor: Colors.blue,
                            buttoncolor: AppColors.cWhite,
                            frame: AppColors.cWhite,
                            onButtonPress: () {},
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          flex: 1,
                          child: ButtonIcon(
                            size: size,
                            text: 'GOOGLE',
                            icon: 'googlee',
                            iconcolor: Colors.red,
                            textcolor: AppColors.cDarkGrey,
                            buttoncolor: AppColors.cWhite,
                            onButtonPress: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
