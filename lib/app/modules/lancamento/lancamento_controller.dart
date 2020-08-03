import 'package:controlee/app/modules/lancamento/model/lancamento_model.dart';
import 'package:controlee/app/modules/lancamento/repositories/lancamento_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'lancamento_controller.g.dart';

class LancamentoController = _LancamentoControllerBase
    with _$LancamentoController;

abstract class _LancamentoControllerBase with Store {
  @observable
  List<LancamentoModel> lancamentos = [
    LancamentoModel(),
  ].asObservable();

  Dio client = Modular.get();

  _LancamentoControllerBase() {
    getAllLancamentos();
  }

  @action
  Future getAllLancamentos() async {
    await LancamentoRepository(client)
        .getAll()
        .then((value) => lancamentos = value);
  }
}
