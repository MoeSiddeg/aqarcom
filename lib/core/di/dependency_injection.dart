import 'package:aqarcom/core/networking/api_service.dart';
import 'package:aqarcom/feature/home/data/repo/home_repo.dart';
import 'package:aqarcom/feature/home/logic/home_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  // Home Logic & Repo
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt()));
}