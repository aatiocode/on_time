import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:on_time/data/common/dio.dart';
import 'package:on_time/data/common/failure.dart';
import 'package:on_time/data/common/failure_response.dart';
// import 'package:on_time/data/model/request/absences_request.dart';
// import 'package:on_time/data/model/request/login_request.dart';
// import 'package:on_time/data/model/request/register_request.dart';
// import 'package:on_time/data/model/request/update_absences_request.dart';
// import 'package:on_time/data/model/response/absences_response.dart';
// import 'package:on_time/data/model/response/history_response.dart';
// import 'package:on_time/data/model/response/login_response.dart';
// import 'package:on_time/data/model/response/register_response.dart';
// import 'package:on_time/data/model/response/update_absences_response.dart';
// import 'package:on_time/data/model/response/user_response.dart';
import 'package:on_time/data/preferences.dart';
import 'package:on_time/injection.dart';

class Repository {
  final Dio dio;
  final Preferences pref;
  final Logger log;

  Repository({required this.dio, required this.pref, required this.log});

  // Future<Either<Failure, RegisterResponse>> register(
  //     RegisterRequest registerRequest) async {
  //   try {
  //     final response =
  //         await dio.post("/auth/register", data: registerRequest.toJson());
  //     log.d("Repository: ${response.data}");

  //     return Right(RegisterResponse.fromJson(response.data));
  //   } on DioException catch (e) {
  //     Failure failure = dioException(e);
  //     log.e("Repository: ${failure.message}");
  //     return Left(failure);
  //   } catch (e) {
  //     log.e("Repository $e");
  //     return Left(UnknownFailure(null, null));
  //   }
  // }

  // Future<Either<Failure, LoginResponse>> login(
  //     LoginRequest loginRequest) async {
  //   try {
  //     final response =
  //         await dio.post("/auth/login", data: loginRequest.toJson());
  //     log.d("Repository: ${response.data}");

  //     if (response.statusCode == 200) {
  //       LoginResponse loginResponse = LoginResponse.fromJson(response.data);
  //       String token = loginResponse.data?.token ?? "";

  //       Dio dio = getIt.get<Dio>(instanceName: instanceDefaultDio);
  //       dio.options.headers['Content-Type'] = 'application/json';
  //       if (token.isNotEmpty) {
  //         dio.options.headers["Authorization"] = "Bearer $token";
  //       }

  //       return Right(LoginResponse.fromJson(response.data));
  //     } else {
  //       Failure failure =
  //           ServerFailure("", FailureResponse.fromJson(response.data));
  //       return Left(failure);
  //     }
  //   } on DioException catch (e) {
  //     Failure failure = dioException(e);
  //     log.e("Repository: ${failure.message}");
  //     return Left(failure);
  //   } catch (e) {
  //     log.e("Repository $e");
  //     return Left(UnknownFailure(null, null));
  //   }
  // }

  // Future<Either<Failure, UserResponse>> getUser() async {
  //   try {
  //     String? userId = pref.getUserId();
  //     final response = await dio.get("/auth/users/$userId");
  //     log.d("Repository: ${response.data}");

  //     return Right(UserResponse.fromJson(response.data));
  //   } on DioException catch (e) {
  //     Failure failure = dioException(e);
  //     log.e("Repository: ${failure.message}");
  //     return Left(failure);
  //   } catch (e) {
  //     log.e("Repository $e");
  //     return Left(UnknownFailure(null, null));
  //   }
  // }

  // Future<Either<Failure, AbsencesResponse>> absences(
  //     AbsencesRequest absencesRequest) async {
  //   try {
  //     final response =
  //         await dio.post("/absences", data: absencesRequest.toJson());
  //     log.d("Repository: ${response.data}");

  //     return Right(AbsencesResponse.fromJson(response.data));
  //   } on DioException catch (e) {
  //     Failure failure = dioException(e);
  //     log.e("Repository: ${failure.message}");
  //     return Left(failure);
  //   } catch (e) {
  //     log.e("Repository $e");
  //     return Left(UnknownFailure(null, null));
  //   }
  // }

  // Future<Either<Failure, UpdateAbsencesResponse>> updateAbsences(
  //   UpdateAbsencesRequest updateAbsencesRequest,
  //   String absencesId,
  // ) async {
  //   try {
  //     final response = await dio.post("/absences");
  //     log.d("Repository: ${response.data}");

  //     return Right(UpdateAbsencesResponse.fromJson(response.data));
  //   } on DioException catch (e) {
  //     Failure failure = dioException(e);
  //     log.e("Repository: ${failure.message}");
  //     return Left(failure);
  //   } catch (e) {
  //     log.e("Repository $e");
  //     return Left(UnknownFailure(null, null));
  //   }
  // }

  // Future<Either<Failure, HistoryResponse>> getHistory() async {
  //   try {
  //     final response = await dio.get("/absences");
  //     log.d("Repository: ${response.data}");

  //     return Right(HistoryResponse.fromJson(response.data));
  //   } on DioException catch (e) {
  //     Failure failure = dioException(e);
  //     log.e("Repository: ${failure.message}");
  //     return Left(failure);
  //   } catch (e) {
  //     log.e("Repository $e");
  //     return Left(UnknownFailure(null, null));
  //   }
  // }
}
