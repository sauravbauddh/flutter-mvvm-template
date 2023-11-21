import 'package:mvvm/data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.error() : status = Status.ERROR;
  ApiResponse.completed() : status = Status.COMPLETED;

  @override
  String toString() {
    return "Status : $status\nMessage: $message\nData: $data";
  }
}
