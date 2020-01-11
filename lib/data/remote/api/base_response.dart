class BaseResponse<T> {
  bool success;
  String error;
  T data;

  BaseResponse({this.success, this.data, this.error});
}
