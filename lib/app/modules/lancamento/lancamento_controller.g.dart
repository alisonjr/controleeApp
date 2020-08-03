// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lancamento_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LancamentoController on _LancamentoControllerBase, Store {
  final _$lancamentosAtom = Atom(name: '_LancamentoControllerBase.lancamentos');

  @override
  List<LancamentoModel> get lancamentos {
    _$lancamentosAtom.reportRead();
    return super.lancamentos;
  }

  @override
  set lancamentos(List<LancamentoModel> value) {
    _$lancamentosAtom.reportWrite(value, super.lancamentos, () {
      super.lancamentos = value;
    });
  }

  final _$getAllLancamentosAsyncAction =
      AsyncAction('_LancamentoControllerBase.getAllLancamentos');

  @override
  Future<dynamic> getAllLancamentos() {
    return _$getAllLancamentosAsyncAction.run(() => super.getAllLancamentos());
  }

  @override
  String toString() {
    return '''
lancamentos: ${lancamentos}
    ''';
  }
}
