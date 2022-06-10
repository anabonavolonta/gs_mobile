import 'package:mobile_global_solution/core/models/agricultores.dart';
import 'package:dio/dio.dart';

class ApiService {
  final baseApi = "https://localhost:8000/api";
  final Dio httpRequest = Dio();

  Future getAgricultores() async {
    var response = await this.httpRequest.get(this.baseApi + '/agricultores');
    var data = Agricultores.fromJson(response.data);

    return [data];
  }

  void postAgricultores(Agricultores input) async {
    await this
        .httpRequest
        .post(baseApi + '/agricultores', data: input.toJson());
  }
}
