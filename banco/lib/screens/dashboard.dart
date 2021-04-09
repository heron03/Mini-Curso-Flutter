import 'package:banco/models/transferencia.dart';
import 'package:flutter/material.dart';

import 'list_transferencia.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Transferencia> listaDeTransferencia = [
      Transferencia(100.10, 'Heron'),
      Transferencia(200.10, 'João'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Card(
                    child: Image.asset('lib/imagens/logo.png'),
                    color: Colors.blue[900],
                  ),
                ),
                Container(
                  height: 1000,
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: RaisedButton(
                          child: Text('Tranferencia'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ListTransferencia(listaDeTransferencia),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: RaisedButton(
                          child: Text('Deposito'),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
