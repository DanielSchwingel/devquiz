import 'package:devquiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int lenght;
  final int result;
  
  ResultPage({ required this.title, required this.lenght, required this.result });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100),
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.trophy),
            Column(
              children: [
                Text(
                  'Parabéns!',
                  style: AppTextStyles.heading40,
                ),
                SizedBox(
                  height: 16,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Você concluiu ',
                    style: AppTextStyles.body,
                    children: [
                      TextSpan(
                        text: '\n$title',
                        style: AppTextStyles.bodyBold
                      ),
                      TextSpan(
                        text: '\ncom $result de $lenght acertos.',
                        style: AppTextStyles.body
                      )
                    ]
                  ),
                  textAlign: TextAlign.center,
                ),                
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 68),
                        child: NextButtonWidget.purple(
                          label: 'Compartilhar', 
                          onTap: (){
                            Share.share('DevQuiz - Resultado do quiz: $title. \nObtive ${result/lenght}% de aproveitamento!');
                          }
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),  
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 68),
                        child: NextButtonWidget.white(
                          label: 'Voltar ao início', 
                          onTap: (){
                            Navigator.pushReplacement(
                              context, 
                              MaterialPageRoute(
                                builder: (context)=> HomePage()
                              )
                            );
                          }
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}