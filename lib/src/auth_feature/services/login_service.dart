import 'package:morning_box_hackfest/src/auth_feature/models/login.dart';
import 'package:morning_box_hackfest/src/auth_feature/models/login_responses.dart';
import 'package:morning_box_hackfest/src/shared/api_utils.dart';

class LoginApi extends ApiUtils {
  Future<LoginResponse> login(Login login) async {
    var response =
        await ApiUtils().dio.post('/signin', data: login.toJson());
    return LoginResponse.fromJson(response.data);
  }
}