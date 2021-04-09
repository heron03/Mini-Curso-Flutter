import 'package:banco/models/transferencia.dart';
import 'package:banco/screens/form_transferencia.dart';
import 'package:flutter/material.dart';

class ListTransferencia extends StatelessWidget {
  final List<Transferencia> listaDeTransferencia;

  ListTransferencia(this.listaDeTransferencia);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: ListView.builder(
        itemCount: listaDeTransferencia.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text(listaDeTransferencia[index].nomeRemetente),
              subtitle: Text(
                  listaDeTransferencia[index].valorTransferencia.toString()),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[900],
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormTransferencia(listaDeTransferencia),
            ),
          );
        },
      ),
    );
  }
}
