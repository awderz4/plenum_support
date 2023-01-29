import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plenum_app_support/app/constants/app_colors.dart';
import 'package:plenum_app_support/app/constants/app_images.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              AssetImages.logo,
              height: Get.height * 0.4,
              width: Get.width,
            ),
            ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(16),
              itemCount: controller.questionsAndAnswers.length,
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuestionText(
                    text: controller.questionsAndAnswers[index].question,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  AnswerText(
                    text: controller.questionsAndAnswers[index].answer,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'If you have any questions about the app or app improvment or app report please contact us.',
                style: GoogleFonts.workSans(
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Phone Number: +9647508483223',
                style: GoogleFonts.workSans(
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Email: awder.zangana@icloud.com',
                style: GoogleFonts.workSans(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionText extends StatelessWidget {
  const QuestionText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: GoogleFonts.workSans(
          fontSize: 20,
          color: AppColors.questionColor,
        ),
        children: <TextSpan>[
          const TextSpan(
            text: 'Q: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: text),
        ],
      ),
    );
  }
}

class AnswerText extends StatelessWidget {
  const AnswerText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: GoogleFonts.workSans(
          fontSize: 20,
          color: AppColors.answerColor,
        ),
        children: <TextSpan>[
          const TextSpan(
            text: 'A: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: text),
        ],
      ),
    );
  }
}
