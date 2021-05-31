import 'package:devquiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  QuizWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24 ,
          ),
          AwnserWidget(
            title: 'Possibilita a criação de aplicativos compilados nativamente',
            isRight: false,
            isSelected: true,
          ),
          AwnserWidget(
            title: 'Possibilita a criação de aplicativos compilados nativamente',
            isRight: true,
            isSelected: true
          ),
          AwnserWidget(
            title: 'Possibilita a criação de aplicativos compilados nativamente'
          ),
          AwnserWidget(
            title: 'Possibilita a criação de aplicativos compilados nativamente'
          )
        ],
      ),
    );
  }
}