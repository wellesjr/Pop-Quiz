import 'package:popquiz/modules/home/modules/event_model.dart';
import 'package:popquiz/modules/home/repositories/home_repository.dart';
import 'package:popquiz/modules/home/widgets/appbar/dashdboard_model.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<DashdboardModel> getDashdboard() async {
    await Future.delayed(const Duration(seconds: 2));
    return DashdboardModel(credito: 1500.00, debito: 535);
  }

  @override
  Future<List<EventModel>> getEvents() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      EventModel(
          type: 1,
          created: DateTime.now(),
          title: "Churrasco",
          value: 200.00,
          people: 3),
      EventModel(
        type: 1,
        created: DateTime.now(),
        title: "Churrasco",
        value: 15200.00,
        people: 3,
      ),
      EventModel(
        type: 2,
        created: DateTime.now(),
        title: "Churrasco",
        value: 200.00,
        people: 3,
      ),
      EventModel(
        type: 1,
        created: DateTime.now(),
        title: "Churrasco",
        value: 200.00,
        people: 3,
      ),
      EventModel(
        type: 2,
        created: DateTime.now(),
        title: "Churrasco",
        value: 200.00,
        people: 3,
      ),
      EventModel(
        type: 2,
        created: DateTime.now(),
        title: "Churrasco",
        value: 200.00,
        people: 3,
      ),
    ];
  }
}
