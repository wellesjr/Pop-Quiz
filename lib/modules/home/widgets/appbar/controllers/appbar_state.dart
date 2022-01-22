abstract class AppBarState {}

class AppBarStateEmpty extends AppBarState {}

class AppBarStateLoading extends AppBarState {}

class AppBarStateSuccess extends AppBarState {
}

class AppBarStateFailure extends AppBarState {
  String message;
  AppBarStateFailure({required this.message});
}
