import 'package:aqarcom/feature/home/data/models/home_response_model.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';
import 'api_constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

///////////////////////////////////////////////////////////////////////////////////
  // Home endpoint
  @GET(ApiConstants.home)
  @Headers(<String, dynamic>{
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    // 'Authorization' : 'Bearer $token'
  })
  Future<HomeResponseModel> getHomeData();

}
