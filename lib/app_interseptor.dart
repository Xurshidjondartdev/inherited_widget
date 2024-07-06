import 'package:http/src/base_request.dart';
import 'package:http/src/base_response.dart';
import 'package:http_interceptor/models/interceptor_contract.dart';

class AppInterseptor extends InterceptorContract {
  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) {
    throw UnimplementedError();
  }

  @override
  Future<BaseResponse> interceptResponse({required BaseResponse response}) {
    throw UnimplementedError();
  }
}
