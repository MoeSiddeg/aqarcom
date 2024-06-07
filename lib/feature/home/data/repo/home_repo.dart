
import 'package:aqarcom/core/networking/api_error_handler.dart';
import 'package:aqarcom/core/networking/api_result.dart';
import 'package:aqarcom/core/networking/api_service.dart';
import 'package:aqarcom/feature/home/data/models/home_response_model.dart';

class HomeRepo{
  final ApiService _apiService;
  HomeRepo(this._apiService);
  Future<ApiResult<HomeResponseModel>> getHomeData() async {
    try {
      final response = await _apiService.getHomeData();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}