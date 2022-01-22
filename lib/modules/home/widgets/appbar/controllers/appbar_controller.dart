import 'package:popquiz/modules/home/repositories/home_repository.dart';
import 'package:popquiz/modules/home/widgets/appbar/controllers/appbar_state.dart';

class AppBarController {
  late HomeRepository repository;

  Function(AppBarState state)? onListen;

  AppBarState state = AppBarStateEmpty();

  AppBarController({HomeRepository? repository}) {
    this.repository;
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
