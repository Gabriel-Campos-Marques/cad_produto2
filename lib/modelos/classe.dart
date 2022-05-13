// ignore_for_file: non_constant_identifier_names

class Produto {
  final String cod_Produto;
  final String desc_Produto;
  final int qdt_Produto;
  final String? local_Produto;

  Produto(this.cod_Produto, this.desc_Produto, this.qdt_Produto,
      this.local_Produto);

  @override
  String toString() {
    return 'Produto{cod_Produto: $cod_Produto, desc_Produto: $desc_Produto, qdt_Produto: $qdt_Produto, local_Produto: $local_Produto}';
  }
}
