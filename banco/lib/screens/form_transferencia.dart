import 'package:banco/models/transferencia.dart';
import 'package:banco/screens/list_transferencia.dart';
import 'package:flutter/material.dart';

class FormTransferencia extends StatefulWidget {
  final List<Transferencia> listaTransferencia;

  FormTransferencia(this.listaTransferencia);

  @override
  State<StatefulWidget> createState() {
    return FormTransferenciaState();
  }
}

class FormTransferenciaState extends State<FormTransferencia> {
  TextEditingController nomeRemetente = TextEditingController();
  TextEditingController valorTransferencia = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Tranfêrencias'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: nomeRemetente,
                decoration: InputDecoration(labelText: 'Nome'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: valorTransferencia,
                decoration:
                    InputDecoration(labelText: 'Valor da Transfêrencia'),
                keyboardType: TextInputType.number,
              ),
            ),
            RaisedButton(
              onPressed: () => criarTransferencia(context),
              child: Text('Confirmar Transfêrencia'),
            ),
          ],
        ),
      ),
    );
  }

  void criarTransferencia(BuildContext context) {
    if (nomeRemetente.text != null && valorTransferencia.text != null) {
      Transferencia transferencia = Transferencia(
        double.tryParse(valorTransferencia.text),
        nomeRemetente.text,
      );
      widget.listaTransferencia.add(transferencia);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ListTransferencia(widget.listaTransferencia),
        ),
      );
    }
  }
}
