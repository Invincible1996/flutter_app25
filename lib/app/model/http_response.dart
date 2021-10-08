/// create by kevin
/// create at 2021-09-14
/// desc
///
class HttpResponse {
  String? resultcode;
  String? reason;
  dynamic result;
  int? errorCode;

  HttpResponse({this.resultcode, this.reason, this.result, this.errorCode});

  HttpResponse.fromJson(Map<String, dynamic> json) {
    resultcode = json['resultcode'];
    reason = json['reason'];
    result = json['result'];
    errorCode = json['error_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['resultcode'] = resultcode;
    data['reason'] = reason;
    data['result'] = result;
    data['error_code'] = errorCode;
    return data;
  }
}
