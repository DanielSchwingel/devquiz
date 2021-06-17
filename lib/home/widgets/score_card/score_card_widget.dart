import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/widgets/chart/chart_widget.dart';
import 'package:flutter/material.dart';

class ScoreCardWidget extends StatelessWidget {
  final double percent;

  ScoreCardWidget({required this.percent});

	@override
	Widget build(BuildContext context) {
		return Padding(
			padding: const EdgeInsets.symmetric(horizontal: 20),
			child: Container(
				height: 136,
				decoration: BoxDecoration(
					color: AppColors.white,
          border: Border.fromBorderSide(
            BorderSide(
              color: AppColors.border
            )
          ),
					borderRadius: BorderRadius.circular(15)
				),
				child: Padding(
				  padding: const EdgeInsets.all(24),
				  child: Row(
				  	mainAxisAlignment: MainAxisAlignment.center,
				  	children: [
				  		Expanded(
				  			flex: 1,
				  			child: ChartWidget(percent: percent)
				  		),
				  		Expanded( 
				  			flex: 3,
				  			child: Padding(
				  				padding: const EdgeInsets.only(left: 24),
				  				child: Column(
				  					mainAxisAlignment: MainAxisAlignment.center,
				  					crossAxisAlignment: CrossAxisAlignment.start,
				  					children: [
				  						Text(
				  							'Vamos começar', 
				  							style: AppTextStyles.heading
				  						),
				  						Text(
				  							'Complete os desafios e avançe em conhecimento!',
				  							style: AppTextStyles.body,
				  						)
				  					],
				  				),
				  			)
				  		)
				  	],
				  ),
				),
			)
		);
	}
}