import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'lancamento_controller.dart';

class LancamentoPage extends StatefulWidget {
  final String title;
  const LancamentoPage({Key key, this.title = "Lancamento"}) : super(key: key);

  @override
  _LancamentoPageState createState() => _LancamentoPageState();
}

class _LancamentoPageState
    extends ModularState<LancamentoPage, LancamentoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Observer(
          builder: (_) {
            return (controller.lancamentos[0].valor == null)
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: controller.lancamentos.length,
                    itemBuilder: (BuildContext context, index) {
                      return ListTile(
                        leading: Transform.rotate(
                          child: Icon(
                            controller.lancamentos[index].tipo == "D"
                                ? Icons.arrow_upward
                                : Icons.arrow_downward,
                            color: controller.lancamentos[index].tipo == "D"
                                ? Colors.red
                                : Colors.green,
                          ),
                          angle: 45 * pi / 180,
                        ),
                        subtitle: Text('sub test'),
                        title: Text(
                          controller.lancamentos[index].descricao,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Text(
                          NumberFormat.simpleCurrency(
                            locale: 'pt_BR',
                            decimalDigits: 2,
                          ).format((controller.lancamentos[index].tipo == "D")
                              ? controller.lancamentos[index].valor * -1
                              : controller.lancamentos[index].valor),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      );
                    });
          },
        ),
      ),
    );
  }
}
