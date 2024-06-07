import 'package:aqarcom/feature/home/data/models/home_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.success(HomeResponseModel data) = Success<T>;
  const factory HomeState.error({required String error}) = Error;
}