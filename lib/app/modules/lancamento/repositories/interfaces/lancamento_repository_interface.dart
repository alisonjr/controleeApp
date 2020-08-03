import 'package:flutter_modular/flutter_modular.dart';

abstract class ILancamentoRepository implements Disposable {
  Future getAll();
  Future getByID();
  Future put();
  Future post();
  Future delete();
}
