class Agricultores {
  int id;
  String nome;
  int idade;
  String cnpj;
  String fazenda;

  Agricultores({this.id, this.nome, this.idade, this.cnpj, this.fazenda});

  Agricultores.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    idade = json['idade'];
    cnpj = json['cnpj'];
    fazenda = json['fazenda'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['idade'] = this.idade;
    data['cnpj'] = this.cnpj;
    data['fazenda'] = this.fazenda;
    return data;
  }
}
