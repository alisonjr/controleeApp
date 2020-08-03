import 'package:controlee/app/modules/lancamento/model/lancamento_model.dart';
import 'package:controlee/utils/environment_vars.dart';
import 'package:mobx/mobx.dart';
import 'repositories/lancamento_repository.dart';
import 'repositories/interfaces/lancamento_repository_interface.dart';
import 'lancamento_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'lancamento_page.dart';

class LancamentoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind<ILancamentoRepository>((i) => LancamentoRepository(
            Dio(BaseOptions(baseUrl: EnvironmentVars.API_BASE_URL)))),
        Bind((i) => LancamentoController()),
        Bind((i) => ObservableList<LancamentoModel>()),
        Bind((i) => LancamentoModel()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => LancamentoPage()),
      ];

  static Inject get to => Inject<LancamentoModule>.of();
}
