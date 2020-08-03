import 'package:controlee/app/modules/home/home_module.dart';
import 'package:controlee/app/modules/lancamento/lancamento_module.dart';
import 'package:controlee/utils/environment_vars.dart';
import 'package:dio/dio.dart';
import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:controlee/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeModule()),
        Bind((i) => AppController()),
        Bind((i) => LancamentoModule()),
        Bind((i) => Dio(BaseOptions(baseUrl: EnvironmentVars.API_BASE_URL))),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router("/lancamentos", module: LancamentoModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
