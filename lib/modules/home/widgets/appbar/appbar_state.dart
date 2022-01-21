import 'package:popquiz/modules/home/widgets/appbar/dashdboard_model.dart';

abstract class AppBarState {}

class AppBarStateEmpty extends AppBarState {}

class AppBarStateLoading extends AppBarState {}

class AppBarStateSuccess extends AppBarState {
  DashdboardModel model;
  AppBarStateSuccess({required this.model});
}

class AppBarStateFailure extends AppBarState {
  String message;
  AppBarStateFailure({required this.message});
}
