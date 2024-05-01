import 'package:dio/dio.dart';


abstract class DataState<T> {
  final T ? data;
  final DioError ? error;

  const DataState({ this.data, this.error});
}

class DataSuccess extends DataState{
  const DataSuccess(data) : super(data: data);
}

class DataError extends DataState {
  const DataError(DioError error) : super (error: error);
}