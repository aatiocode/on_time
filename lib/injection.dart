import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:on_time/data/common/base_url.dart';
import 'package:on_time/data/common/dio.dart';
import 'package:on_time/data/preferences.dart';
import 'package:on_time/data/repository.dart';
// import 'package:on_time/presentation/feature/attendance/bloc/attendance_bloc.dart';
// import 'package:on_time/presentation/feature/history/bloc/history_bloc.dart';
// import 'package:on_time/presentation/feature/home/bloc/home_bloc.dart';
// import 'package:on_time/presentation/feature/login/bloc/login_bloc.dart';
// import 'package:on_time/presentation/feature/register/bloc/register_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;
const instanceDefaultDio = "default";

void init() async {
  getIt.registerLazySingleton<Dio>(
    () => configureDio(baseUrl),
    instanceName: instanceDefaultDio,
  );

  getIt.registerLazySingleton(() => Logger());
  dataInjection();
  initBloc();
}

void dataInjection() {
  getIt.registerSingletonAsync<SharedPreferences>(
      () => SharedPreferences.getInstance());

  getIt.registerLazySingleton<Repository>(
    () => Repository(
      dio: getIt.get<Dio>(instanceName: instanceDefaultDio),
      pref: getIt.get<Preferences>(),
      log: getIt.get<Logger>(),
    ),
  );

  getIt.registerLazySingleton<Preferences>(
    () => Preferences(preferences: getIt.get<SharedPreferences>()),
  );
}

void initBloc() {
  // getIt.registerLazySingleton<RegisterBloc>(
  //   () => RegisterBloc(
  //     Repository: getIt.get<Repository>(),
  //     log: getIt.get<Logger>(),
  //   ),
  // );

  // getIt.registerLazySingleton<LoginBloc>(
  //   () => LoginBloc(
  //     Repository: getIt.get<Repository>(),
  //     pref: getIt.get<Preferences>(),
  //     log: getIt.get<Logger>(),
  //   ),
  // );

  // getIt.registerLazySingleton<HomeBloc>(
  //   () => HomeBloc(
  //     Repository: getIt.get<Repository>(),
  //     log: getIt.get<Logger>(),
  //   ),
  // );

  // getIt.registerLazySingleton<AttendanceBloc>(
  //   () => AttendanceBloc(
  //     Repository: getIt.get<Repository>(),
  //     log: getIt.get<Logger>(),
  //   ),
  // );

  // getIt.registerLazySingleton<HistoryBloc>(
  //   () => HistoryBloc(
  //     Repository: getIt.get<Repository>(),
  //     log: getIt.get<Logger>(),
  //   ),
  // );
}
