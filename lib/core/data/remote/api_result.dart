/*
* Author: Bibek Baidya
* created: 11/10/22
* */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';
@freezed
class ApiResult<T> with _$ApiResult<T>{
  const factory ApiResult.success({required T data}) = Success<T>;

  const factory ApiResult.failure({required dynamic error}) = Failure<T>;
}