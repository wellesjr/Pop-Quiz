import 'package:flutter/material.dart';
import 'package:popquiz/modules/home/widgets/appbar/appbar_controller.dart';
import 'package:popquiz/modules/home/widgets/appbar/appbar_state.dart';
import 'package:popquiz/modules/home/widgets/appbar/totalizador.dart';

class DashdboardPage extends StatefulWidget {
  const DashdboardPage({Key? key}) : super(key: key);

  @override
  State<DashdboardPage> createState() => _DashdboardPageState();
}

class _DashdboardPageState extends State<DashdboardPage> {
  final controller = AppBarController();

  @override
  void initState() {
    controller.getDashdboard();
    controller.listen((state) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch (controller.state.runtimeType) {
      case AppBarStateLoading:
        {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Totalizador(label: 1, value: 0.00, isLoading: false),
              const SizedBox(width: 15),
              Totalizador(label: 2, value: 0.00, isLoading: false)
            ],
          );
        }
      case AppBarStateSuccess:
        {
          final dashdboard = (controller.state as AppBarStateSuccess).model;
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Totalizador(label: 1, value: dashdboard.credito, isLoading: true),
              const SizedBox(width: 15),
              Totalizador(label: 2, value: dashdboard.debito, isLoading: true)
            ],
          );
        }
      case AppBarStateFailure:
        {
          final message = (controller.state as AppBarStateFailure).message;
          return Text(message.toString());
        }
      default:
        {
          return Container();
        }
    }
  }
}
