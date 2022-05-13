// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import '../modelos/classe.dart';

// ignore: camel_case_types
class cadastro_produto extends StatefulWidget {
  const cadastro_produto({Key? key}) : super(key: key);

  @override
  State<cadastro_produto> createState() {
    return cadastro_produtoState();
  }
}

// ignore: camel_case_types
class cadastro_produtoState extends State<cadastro_produto> {
  List<String> localizacoes = [
    'Recebimento',
    'Almoxarifado',
    'Industrial',
    'Em poder de Terceiros'
  ];

  final TextEditingController _codigo_produto = TextEditingController();
  final TextEditingController _descricao_produto = TextEditingController();
  final TextEditingController _quantida_produto = TextEditingController();

  String? local_produto;

  void limpaCampos() {
    _codigo_produto.clear();
    _descricao_produto.clear();
    _quantida_produto.clear();
    local_produto = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Produtos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: _codigo_produto,
              decoration: const InputDecoration(
                labelText: 'Código Produto',
              ),
              style: const TextStyle(
                fontSize: 24.0,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _descricao_produto,
                decoration:
                    const InputDecoration(labelText: 'Descrição Produto'),
                style: const TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _quantida_produto,
                decoration:
                    const InputDecoration(labelText: 'Quantidade do Produto'),
                style: const TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: double.maxFinite,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  items: [
                    DropdownMenuItem(
                        child: Text(localizacoes[0]), value: localizacoes[0]),
                    DropdownMenuItem(
                        child: Text(localizacoes[1]), value: localizacoes[1]),
                    DropdownMenuItem(
                        child: Text(localizacoes[2]), value: localizacoes[2]),
                    DropdownMenuItem(
                        child: Text(localizacoes[3]), value: localizacoes[3]),
                  ],
                  onChanged: (value) => setState(() {
                    local_produto = value;
                  }),
                  hint: const Text('Selecione o Estoque'),
                  style: const TextStyle(
                    fontSize: 24.0,
                    color: Colors.black,
                  ),
                  icon: const Icon(Icons.add_location_alt),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    final String codProduto = _codigo_produto.text;
                    final String descProduto = _descricao_produto.text;
                    final int? qtdProduto =
                        int.tryParse(_quantida_produto.text);
                    final String localProduto = local_produto.toString();
                    final Produto novoProduto = Produto(
                        codProduto, descProduto, qtdProduto!, localProduto);
                    Navigator.pop(context, novoProduto);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink, // Background color
                      textStyle: const TextStyle(fontSize: 16)),
                  child: const Text(
                    'Adicionar',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    limpaCampos();
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink, // Background color
                      textStyle: const TextStyle(fontSize: 16)),
                  child: const Text('Limpar'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
