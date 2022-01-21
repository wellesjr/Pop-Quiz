import 'package:popquiz/modules/home/modules/event_model.dart';
import 'package:popquiz/modules/home/widgets/appbar/dashdboard_model.dart';

abstract class HomeRepository{
  Future<List<EventModel>> getEvents();
  Future<DashdboardModel> getDashdboard();
}

