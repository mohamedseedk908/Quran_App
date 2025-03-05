class ErrorModel {
  final int code;
  final String status;

  ErrorModel({
    required this.code,
    required this.status,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      code: jsonData["code"],
      status: jsonData["status"],
    );
  }
}
