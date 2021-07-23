import 'package:braseel_noticias/app/shared/constants/api_base_url.dart';
import 'package:dio/dio.dart';

class AuthApiClient {
  Future<Map<String, dynamic>> signIn(String cpf, String password) async {
    try {
      final response = await Dio().post<Map<String, dynamic>>('$BASE_URL/login',
          data: {'tax_id': cpf, 'password': password});

      return response.data ?? <String, dynamic>{};
    } catch (e) {
      return {'error': e.toString()};
    }
  }
}
