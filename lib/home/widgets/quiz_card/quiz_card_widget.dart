import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String image;
  final String completed;
  final double percent;
  final VoidCallback onTap;

  QuizCardWidget({
    required this.title, 
    required this.image,
    required this.completed, 
    required this.percent,
    required this.onTap
  }) : assert(['data', 'laptop', 'hierarchy', 'blocks'].contains(image)) ;

  final config = {
    'data': {
      'image': AppImages.data 
    },
    'laptop': {
      'image': AppImages.laptop
    },
    'hierarchy': {
      'image': AppImages.hierarchy
    },
    'blocks': {
      'image': AppImages.blocks
    }
  };

  String get imageCard => config[image]!['image']!;

  @override
  Widget build(BuildContext context) {
    return 
      GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.fromBorderSide(
              BorderSide(
                color: AppColors.border
              )
            ),
            color: AppColors.white
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                child: Image.asset(imageCard),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                title,
                style: AppTextStyles.heading15
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      completed,
                      style: AppTextStyles.body11,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: ProgressIndicatorWidget(
                      value: percent,
                    )
                  )
                ]
              )
            ],
          )
        ),
      );
  }
}