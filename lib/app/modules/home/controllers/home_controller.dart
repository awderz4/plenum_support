import 'package:get/get.dart';
import 'package:plenum_app_support/app/data/qna.dart';

class HomeController extends GetxController {
  List<QnA> questionsAndAnswers = [
    QnA(
      question: 'What is Plenum Ceramica?',
      answer:
          'Plenum Ceramica is an application made for Plenum Company employees in Iraq region.',
    ),
    QnA(
      question: 'Can i use Plenum Ceramica?',
      answer:
          'Plenum Ceramica can be used only by approved employees who work in the Company.',
    ),
    QnA(
        question:
            'I\'m an employee at Plenum Ceramica Company how can i get approved to use the app?',
        answer:
            'The adminstator is aware of all accounts and account status, when you\'re verified you can automaticly use the app.')
  ];
}
