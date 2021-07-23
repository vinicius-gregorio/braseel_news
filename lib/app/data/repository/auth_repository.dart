import 'package:braseel_noticias/app/data/controller/auth_controller.dart';
import 'package:braseel_noticias/app/data/model/user_model.dart';
import 'package:braseel_noticias/app/data/provider/auth_provider.dart';

class AuthRepository {
  final AuthApiClient apiClient = AuthApiClient();
  final AuthController authController = AuthController();
  Future<User> signIn(String cpf, String password) async {
    var response = await apiClient.signIn(cpf, password);
    response['cpf'] = cpf.toString();

    var user = User.fromMap(response); //should change to auth response
    if (user.authorized == true) {
      authController.setUser(user);
    } else {
      authController.setUser(null);
    }
    return user;
  }
}
