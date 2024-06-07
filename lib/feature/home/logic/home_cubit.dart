import 'package:aqarcom/feature/home/data/models/home_response_model.dart';
import 'package:aqarcom/feature/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aqarcom/feature/home/data/repo/home_repo.dart';
class HomeCubit extends Cubit<HomeState> {
final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo)
      : super(const HomeState.initial());
  void emitGetHomeData(
      ) async {
    emit(const HomeState.loading());
    final response = await _homeRepo.getHomeData();
    response.when(success: (HomeResponseModel homeResponseModel) {
      emit(HomeState.success(homeResponseModel));
    }, failure: (error) {
      emit(HomeState.error(error: error.apiErrorModel.message!));
    });
  }

}