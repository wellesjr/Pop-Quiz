import 'package:flutter/material.dart';
import 'package:popquiz/modules/login/controllers/login_service.dart';
import 'package:popquiz/modules/login/controllers/login_state.dart';

class LoginController {
  LoginState state = LoginStateEmpty();
  VoidCallback onUpdate;
  Function(LoginState state)? onChange;

  final LoginService service;

  LoginController({required this.service, required this.onUpdate});

  Future<void> googleSignIn() async {
    try {
      state = LoginStateLoading();
      update();
      final user = await service.googleSignIn();
      state = LoginStateSuccess(user: user);
      update();
    } catch (error) {
      state = LoginStateFailure(message: error.toString());
      update();
    }
  }

  void update() {
    onUpdate();
    if (onChange != null) {
      onChange!(state);
    }
  }

  void listen(Function(LoginState state) onChange) {
    this.onChange = onChange;
  }
}
