import 'package:flutter/material.dart';
import 'package:popquiz/modules/home/home_controller.dart';
import 'package:popquiz/modules/home/home_state.dart';
import 'package:popquiz/modules/home/widgets/appbar/appbar_homepage.dart';
import 'package:popquiz/modules/home/widgets/card_home.dart';
import 'package:popquiz/modules/models/user/user_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    controller.getEvents();
    controller.listen((state) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      appBar: AppbarHomepage(
        size: size.height * 10,
        user: user,
      ),
      body: Scrollbar(
        isAlwaysShown: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(children: [
              if (controller.state is HomeStateLoading) ...[
                Center(
                    child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                     const SizedBox(height: 120),
                    const CircularProgressIndicator(),
                  ],
                ))
              ] else if (controller.state is HomeStateSuccess) ...[
                ...(controller.state as HomeStateSuccess)
                    .events
                    .map((e) => CardHome(model: e))
                    .toList()
              ] else if (controller.state is HomeStateFailure) ...[
                Text((controller.state as HomeStateFailure).message)
              ] else ...[
                Container()
              ]
            ]),
          ),
        ),
      ),
    );
  }
}
