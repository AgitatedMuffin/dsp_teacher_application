import 'package:adobe_xd/blend_mask.dart';
import 'package:dsp_teacher_application/Logic/waiting_questions/cubit/waitingquestions_cubit.dart';
import 'package:dsp_teacher_application/Presentation/Global_components/LevelMenu.dart';
import 'package:dsp_teacher_application/Presentation/Global_components/TitleBar.dart';
import 'package:dsp_teacher_application/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WaitingQuestions extends StatefulWidget {
  @override
  _WaitingQuestionsState createState() => _WaitingQuestionsState();
}

class _WaitingQuestionsState extends State<WaitingQuestions> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Stack(children: [
      Positioned(
        right: -size.height / 3,
        top: -size.height / 3,
        child: Container(
          width: size.height / 1.5,
          height: size.height / 1.5,
          child: BlendMask(
              blendMode: BlendMode.srcOver,
              opacity: 0.1,
              child: Image.asset('lib/Presentation/Images/ArabicCircle.png')),
        ),
      ),
      SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 72),
          TitleBar(title: 'Waiting Questions'),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
            child: LevelMenu(questionLevels: questionLevels, avatar: avatar),
          ),
          BlocBuilder<WaitingQuestionsCubit, WaitingQuestionsState>(
            builder: (context, state) {
              return Column(
                children: state.list == null ? [Container()] : state.list,
              );
            },
          )
        ]),
      )
    ]));
  }
}
