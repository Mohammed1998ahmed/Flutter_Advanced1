import 'package:advancedflutter/core/helper/shared_phreferance.dart';
import 'package:advancedflutter/core/networking/constansts.dart';
import 'package:advancedflutter/core/networking/dio_Service.dart';
import 'package:advancedflutter/feature/home/data/spacailition_all_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit getObject(context) => BlocProvider.of(context);
  SpecializationModel? specializationModel;

  get_Specialition() {
    emit(HomeSpecializationLoading());

    DioService()
        .getRequest(Constants.home_Specialization_Path,
            token: SharedPreferencesService().getString(key: "token"))
        .then((value) {
      specializationModel = SpecializationModel.fromJson(value.data);
      emit(HomeSpecializationSecces());
    }).catchError((onError) {
      emit(HomeSpecializationError());
      print(onError.toString());
    });
  }
}
