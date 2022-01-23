import 'package:flutter/material.dart';
import 'package:popquiz/modules/challenge/challenge_page.dart';
import 'package:popquiz/modules/home/home_controller.dart';
import 'package:popquiz/modules/home/home_state.dart';
import 'package:popquiz/modules/home/widgets/appbar/appbar_homepage.dart';
import 'package:popquiz/modules/home/widgets/historic/historic_button.dart';
import 'package:popquiz/modules/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:popquiz/modules/models/user/user_model.dart';
import 'package:popquiz/theme/app_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getQuizzes();
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    print.call(user.email);
    if (controller.state == HomeState.success) {
      return Scaffold(
        appBar: AppbarHomepage(
          size: size.height * 10,
          user: user,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 32,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    HistoricButton(label: "Historico de resposta"),
                    const SizedBox(width: 10),
                    HistoricButton(label: "Ultimo Quiz")
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  crossAxisCount: 2,
                  children: controller.quizzes!
                      .map((e) => QuizCardWidget(
                          image: e.image,
                          title: e.title,
                          completed:
                              '${e.questionAnswered} de ${e.questions.length}',
                          percent: e.questionAnswered / e.questions.length,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChallengePage(
                                    title: e.title,
                                    questions: e.questions,
                                  ),
                                ));
                          }))
                      .toList(),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor:
                AlwaysStoppedAnimation<Color>(AppTheme.colors.titleLoginPage1),
          ),
        ),
      );
    }
  }
}
