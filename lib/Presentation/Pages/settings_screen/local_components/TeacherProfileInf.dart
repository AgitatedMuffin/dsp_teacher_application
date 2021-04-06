import 'package:dsp_teacher_application/Presentation/Theme/theme.dart';
import 'package:flutter/material.dart';

class TeacherProfileInf extends StatelessWidget {
  final String field1;
  final String field2;
  const TeacherProfileInf({
    Key key,
    this.field1,
    this.field2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 32,
        ),
        Text('${this.field1} ',
            style: AppFonts.appText.copyWith(
              color: AppColors.cGreen,
            )),
        Text('${this.field2}',
            style: AppFonts.appText.copyWith(color: AppColors.cDarkGrey)),
      ],
    );
  }
}
