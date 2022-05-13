import 'package:flutter/material.dart';
import 'cadastro_produto.dart';

// ignore: camel_case_types
class lista_produto extends StatefulWidget {
  const lista_produto({Key? key}) : super(key: key);

  @override
  State<lista_produto> createState() => lista_produtoState();
}

// ignore: camel_case_types
class lista_produtoState extends State<lista_produto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Produtos'),
      ),
      body: ListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => const cadastro_produto(),
                ),
              )
              .then(
                (newProduto) => debugPrint(
                  newProduto.toString(),
                ),
              );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
