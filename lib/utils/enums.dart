import 'package:learning_flutter/res/res.dart';

enum RequestType {
  get,
  post,
  put,
  patch,
  delete,
  upload;
}

enum AppFlavor {
  dev,
  prod;
}

enum MessageType {
  error,
  success,
  information;
}

enum AppExceptions {
  operationNotAllowed(ExceptionStrings.operationNotAllowed),
  adminRestrictedOperation(ExceptionStrings.adminRestrictedOperation);

  factory AppExceptions.fromMessage(String code) =>
      <String, AppExceptions>{
        AppExceptions.operationNotAllowed.message: AppExceptions.operationNotAllowed,
        AppExceptions.adminRestrictedOperation.message: AppExceptions.adminRestrictedOperation,
      }[code] ??
      AppExceptions.operationNotAllowed;

  const AppExceptions(this.message);
  final String message;
}
