import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia (),
      ),
    );
  }
}


class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Criando Transferência'),),
        body: Column(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(16.0),//Borda
              child: TextField(
                style: TextStyle(
                  fontSize: 24.0
                ),
                decoration: InputDecoration(
                  labelText: 'Número da conta',
                  hintText: '0000'
                ),
              ),
            ),
            TextField(),
            // ElevatedButton(
            //   child: Text(_textoBotaoConfirmar),
            //   onPressed: () => _criaTransferencia(context),
            // ),
          ],
        ));
  }
}

class ListaTransferencias extends StatelessWidget {//Transformando a classe em widget e o less eu nao consigo mudar
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ItemTransferencia(Transferencia(100.0, 1000)),
          ItemTransferencia(Transferencia(200.0, 1001)),
          ItemTransferencia(Transferencia(300.0, 3000)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: Icon(Icons.add),
      ),
    );
  }
  
}

class ItemTransferencia extends StatelessWidget {

  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text(_transferencia.valor.toString()),
          subtitle: Text(_transferencia.numeroConta.toString()),
        ));
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);

}