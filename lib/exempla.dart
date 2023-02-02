class Produto {
  String? nome;
  double? preco;

  Produto({ this.nome, this.preco = 9.99 });
}

main() {
  var produto1 = Produto(nome: 'LivroDart', preco: 29.9);
  var produto2 = Produto(nome: 'Caneta');

  print('O produto ${produto1.nome} tem o valor de: ${produto1.preco}');
  print('O produto ${produto2.nome} tem o valor de: ${produto2.preco}');
}
