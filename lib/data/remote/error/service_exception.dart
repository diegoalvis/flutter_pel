class ServiceException implements Exception {
  final String cause;

  ServiceException({this.cause});
}
