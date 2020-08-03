import 'package:controlee/utils/environment_vars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(EnvironmentVars.APP_NAME),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.lightBlue, Colors.indigo],
                ),
              ),
            ),
            ListTile(
              title: Text('Lancamentos'),
              onTap: () {
                Modular.to.pushNamed("/lancamentos");
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        margin: new EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 25,
        ),
        child: Card(
          color: Colors.green,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: new LinearGradient(
                colors: [Colors.purpleAccent, Colors.deepPurple],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(
                    Icons.account_balance_wallet,
                    size: 50,
                    color: Colors.white60,
                  ),
                  title: Text('Saldo', style: TextStyle(color: Colors.white)),
                  subtitle:
                      Text('R\$ 300,00', style: TextStyle(color: Colors.white)),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_circle_outlined,
                            color: Colors.white,
                          ),
                          Text(' Adicionar',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: const Text('Ver',
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
