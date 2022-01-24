// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:popquiz/modules/home/widgets/score_card/score_card_widget.dart';
import 'package:popquiz/modules/models/user/user_model.dart';
import 'package:popquiz/theme/app_theme.dart';

class AppbarHomepage extends PreferredSize {
  final UserModel user;
  final size;
  AppbarHomepage({Key? key, required this.size, required this.user})
      : super(
          key: key,
          preferredSize: Size.fromHeight(size * 0.044),
          child: Stack(
            children: [
              Container(
                  height: size * 0.033,
                  decoration: BoxDecoration(
                      gradient: AppTheme.gradients.backgroundSplasPage)),
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
                                      Text("Bem vindo!",
                                          style:
                                              AppTheme.textStyles.textAppbar),
                                      SizedBox(
                                        width: 141,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                user.name!.toUpperCase(),
                                                style: AppTheme
                                                    .textStyles.nameAppBar,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Align(
                alignment: Alignment(0.0, 0.8),
                child: ScoreCardWidget(percent: 1),
              ),
            ],
          ),
        );
}
