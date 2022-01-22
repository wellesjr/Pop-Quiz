import 'package:flutter/material.dart';
import 'package:popquiz/modules/home/home_state.dart';
import 'package:popquiz/modules/home/repositories/home_repository.dart';
import 'package:popquiz/modules/models/quiz/quiz_model.dart';

class HomeController {
  ValueNotifier<HomeState> stateNotifier =
      ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(const Duration(seconds: 2));
    quizzes = await repository.getQuizzes();
    state = HomeState.success;
  }
}
