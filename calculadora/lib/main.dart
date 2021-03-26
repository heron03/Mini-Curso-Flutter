import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  String valorTotal = '';
  String valorSegundo = '';
  String valorPrimeiro = '';
  String operacao = '';
  String textoValores = '0';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    textoValores.toString(),
                    style: TextStyle(fontSize: 50, color: Colors.black),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  botaoNumerico('7'),
                  botaoNumerico('8'),
                  botaoNumerico('9'),
                  botaoOperacao('/'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  botaoNumerico('4'),
                  botaoNumerico('5'),
                  botaoNumerico('6'),
                  botaoOperacao('X'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  botaoNumerico('1'),
                  botaoNumerico('2'),
                  botaoNumerico('3'),
                  botaoOperacao('-'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  botaoNumerico('0'),
                  botaoOperacao('+'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: FlatButton(
                        onPressed: () {
                          limparValores();
                        },
                        color: Colors.yellowAccent,
                        child: Text(
                          'C',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: FlatButton(
                        onPressed: () {
                          calcular();
                        },
                        color: Colors.grey,
                        child: Text(
                          '=',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void numeroPressionado(String valorPressionado) {
    setState(() {
      if (operacao == '') {
        if (valorPrimeiro == '0') {
          valorPrimeiro = '';
        }
        valorPrimeiro = valorPrimeiro + valorPressionado;
        valorTotal = valorPrimeiro;
      } else {
        valorSegundo = valorSegundo + valorPressionado;
      }

      textoValores = valorPrimeiro + operacao + valorSegundo;
    });
  }

  void opercaoPressionada(String operacaoPressionada) {
    setState(() {
      if (valorPrimeiro != '0') {
        operacao = operacaoPressionada;
      }
      textoValores = valorPrimeiro + operacao + valorSegundo;
    });
  }

  void calcular() {
    setState(() {
      if (valorPrimeiro != '0' && valorSegundo != '0' && operacao != null) {
        if (operacao == '+') {
          valorTotal =
              (int.parse(valorPrimeiro) + int.parse(valorSegundo)).toString();
        }
        if (operacao == '-') {
          valorTotal =
              (int.parse(valorPrimeiro) - int.parse(valorSegundo)).toString();
        }
        if (operacao == 'X') {
          valorTotal =
              (int.parse(valorPrimeiro) * int.parse(valorSegundo)).toString();
        }
        if (operacao == '/') {
          valorTotal =
              (int.parse(valorPrimeiro) / int.parse(valorSegundo)).toString();
        }
        textoValores = valorTotal;
      }
    });
  }

  void limparValores() {
    setState(() {
      valorPrimeiro = '0';
      valorSegundo = '';
      valorTotal = '0';
      textoValores = '0';
      operacao = '';
    });
  }

  Expanded botaoNumerico(String valorDoBotao) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.all(1.0),
        child: FlatButton(
          onPressed: () {
            numeroPressionado(valorDoBotao);
          },
          color: Colors.blueAccent,
          child: Text(
            valorDoBotao,
            style: TextStyle(fontSize: 40.0),
          ),
        ),
      ),
    );
  }

  Expanded botaoOperacao(String operacao) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.all(1.0),
        child: FlatButton(
          onPressed: () {
            opercaoPressionada(operacao);
          },
          color: Colors.grey,
          child: Text(
            operacao,
            style: TextStyle(fontSize: 40.0),
          ),
        ),
      ),
    );
  }
}
