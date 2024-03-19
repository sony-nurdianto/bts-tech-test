import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bts_tech_test/repository/data/auth_data.dart';
import 'package:bts_tech_test/repository/models/auth_models/auth_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {

  final AuthData auth = AuthData();

  AuthBloc() : super(AuthInitial()) {
    on<AuthRegister>((event, emit) async {
      emit(AuthLoading());
      try {
        await auth.registerCheck(event.registerData);
        emit(AuthSuccess());
      } catch (e) {
        emit(AuthFailure(error: e.toString()));
      }
    },);
    on<AuthLogin>(
      (event, emit) async {
        emit(AuthLoading());
        try {
          // await _saveLoginStatus();
          emit(AuthSuccess());
        } catch (e) {
          emit(AuthFailure(
              error: 'Gagal login. Periksa kembali username dan password.'));
        }
      },
    );
  }


  // Future<void> _saveLoginStatus() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setBool('isLogged', true);
  // }
}
