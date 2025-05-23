import 'package:advancedflutter/core/helper/extension.dart';
import 'package:advancedflutter/core/networking/constansts.dart';
import 'package:advancedflutter/core/networking/dio_Service.dart';
import 'package:advancedflutter/core/router/routes.dart';
import 'package:advancedflutter/feature/login/data/login_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit getObject(context) => BlocProvider.of(context);
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassWord = TextEditingController();

  Login_Model? login_model;
  void post_Login(
      {required String email,
      required String passWord,
      required BuildContext context}) {
    emit(LoginLoading());
    print(email.toString() + "mmmmm" + passWord.toString());
    FormData formData =
        FormData.fromMap({"email": email, "password": passWord});

    DioService()
        .postRequest(
      Constants.loginPath,
      data: formData,
    )
        .then((value) {
      login_model = Login_Model.fromJson(value.data);
      print(login_model!.message.toString());
      if (login_model!.status == true) {
        context.pushNamed(Routes.home_page);
      }
      emit(LoginSueccs());
    }).catchError((onError) {
      print(onError.toString());
      emit(LoginError());
    });
  }
}
