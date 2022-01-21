import 'package:popquiz/modules/home/repositories/home_repository.dart';
import 'package:popquiz/modules/home/repositories/home_repository_mock.dart';
import 'package:popquiz/modules/home/widgets/appbar/appbar_state.dart';

class AppBarController {
  late HomeRepository repository;

  Function(AppBarState state)? onListen;

  AppBarState state = AppBarStateEmpty();

  AppBarController({HomeRepository? repository}) {
    this.repository = repository ?? HomeRepositoryMock();
  }

  getDashdboard() async {
    update(AppBarStateLoading());
    try {
      final response = await repository.getDashdboard();
      update(AppBarStateSuccess(model: response));
    } catch (e) {
      update(AppBarStateFailure(message: e.toString()));
    }
  }

  void update(AppBarState state) {
    this.state = state;
    if (onListen != null) {
      onListen!(state);
    }
  }

  void listen(Function(AppBarState state) onChange) {
    onListen = onChange;
  }
}
