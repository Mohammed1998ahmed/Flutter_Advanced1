import 'package:advancedflutter/core/helper/extension.dart';
import 'package:advancedflutter/core/helper/shared_phreferance.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/networking/constansts.dart';
import '../../../../core/networking/dio_Service.dart';
import '../../../../core/router/routes.dart';
import '../../data/Register_Model.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  static RegisterCubit getObject(context) => BlocProvider.of(context);
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassWord = TextEditingController();
  String? completeNumber;
  void chaingNumber_Phone(String numberPhone) {
    this.completeNumber = numberPhone;
    emit(Chaing_Number_Phone());
  }

  ReisterModel? reisterModel;
  void post_Register(
      {required String email,
      required String passWord,
      required String phoneNumber,
      required BuildContext context}) {
    emit(RegisterLoading());
    print(email.toString() + "mmmmm" + passWord.toString());
    FormData formData = FormData.fromMap({
      "name": "diaa",
      "email": email,
      "phone": phoneNumber,
      "gender": "0",
      "password_confirmation": passWord,
      "password": passWord,
    });

    DioService()
        .postRequest(
      Constants.Sign_Out_Path,
      data: formData,
    )
        .then((value) {
      reisterModel = ReisterModel.fromJson(value.data);
      print(reisterModel!.message.toString());
      if (reisterModel!.status == true) {
        context.pushNamed(Routes.home_page);
        SharedPreferencesService()
            .setString(key: "token", value: reisterModel!.data!.token!);
      }
      emit(RegisterSecces());
    }).catchError((onError) {
      print(onError.toString());
      emit(RegisterError());
    });
  }
}
