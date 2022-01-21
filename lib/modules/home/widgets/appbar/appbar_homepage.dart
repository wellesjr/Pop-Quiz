import 'package:flutter/material.dart';
import 'package:popquiz/modules/models/user/user_model.dart';

class AppbarHomepage extends PreferredSize {
  final UserModel user;
  // ignore: prefer_typing_uninitialized_variables
  final size;
  AppbarHomepage({Key? key,  required this.size, required this.user})
      : super(key: key, 
          preferredSize: Size.fromHeight(size * 0.044),
          child: Stack(
            children: [
              Container(
                  height: size * 0.033,
                  //decoration:BoxDecoration(gradient: AppThemes.gradients.background)
                      ),
              Column(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 56),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              SizedBox(
                                height: 56,
                                width: 56,
                                child: ClipRRect(
                                    child: Image.network(user.photoUrl!),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              const SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text("Bem vindo!",
                                          //style:AppThemes.textStyles.titleAppBar
                                          ),
                                      SizedBox(
                                        width: 141,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                  user.name!.toUpperCase(),
                                                  //style: AppThemes.textStyles.nameAppBar,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(width: 60),
                              InkWell(
                                onTap: () {
                                  print.call(const Text("Cricou"));
                                },
                                child: Container(
                                    child: const Center(
                                        child: Icon(Icons.add,
                                            color: Colors.white)),
                                    height: 56,
                                    width: 48,
                                    decoration: BoxDecoration(
                                      border: const Border.fromBorderSide(
                                          BorderSide(color: Colors.white)),
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                              const SizedBox(width: 20),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      //DashdboardPage(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
}
