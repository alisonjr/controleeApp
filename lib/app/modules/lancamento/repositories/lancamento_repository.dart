import 'package:controlee/app/modules/lancamento/model/lancamento_model.dart';
import 'package:dio/dio.dart';
import 'interfaces/lancamento_repository_interface.dart';

class LancamentoRepository implements ILancamentoRepository {
  final Dio client;

  LancamentoRepository(this.client);

  @override
  Future delete() async {
    final response = await client.delete('/lancamento');
    return response.data;
  }

  @override
  Future<List<LancamentoModel>> getAll() async {
    try {
      var response = await client.get('/lancamentos');
      return (response.data["list"] as List)
          .map((item) => LancamentoModel.fromJson(item))
          .toList();
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  @override
  Future getByID() async {
    final response = await client.get('/lancamento');
    return response.data;
  }

  @override
  Future post() async {
    final response = await client.post('/lancamento');
    return response.data;
  }

  @override
  Future put() async {
    final response = await client.put('/lancamento');
    return response.data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
