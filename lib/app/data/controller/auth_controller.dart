import 'package:braseel_noticias/app/data/model/user_model.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  User? _user;
  User get user => _user!;

  Future<void> saveUser(User user) async {
    final instance = await SharedPreferences.getInstance();
    instance.setString('user', user.toJson());
  }

  void setUser(User? user) {
    if (user != null) {
      saveUser(user);
      _user = user;
      Get.offAndToNamed('/home');
    } else {
      Get.offAndToNamed('/login');
    }
  }

  Future<void> currentUser() async {
    final instance = await SharedPreferences.getInstance();
    await Future.delayed(Duration(milliseconds: 400));
    if (instance.containsKey('user')) {
      final user = instance.get("user") as String;
      setUser(User.fromJson(user));
      return;
    } else {
      setUser(null);
    }
  }
}
