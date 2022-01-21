import 'package:popquiz/modules/home/home_state.dart';
import 'package:popquiz/modules/home/repositories/home_repository.dart';
import 'package:popquiz/modules/home/repositories/home_repository_mock.dart';

class HomeController {
  late HomeRepository repository;
  Function(HomeState state)? onlisten;

  HomeState state = HomeStateEmpty();

  HomeController({HomeRepository? repository}) {
    this.repository = repository ?? HomeRepositoryMock();
  }
  getEvents() async {
    update(HomeStateLoading());
    try {
      final response = await repository.getEvents();
      update(HomeStateSuccess(events: response));
    } catch (e) {
      update(HomeStateFailure(message: e.toString()));
    }
  }

  void update(HomeState state) {
    this.state = state;
    if (onlisten != null) {
      onlisten!(state);
    }
  }

  void listen(Function(HomeState state) onChange) {
    onlisten = onChange;
  }
}
