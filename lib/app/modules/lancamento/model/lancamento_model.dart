class LancamentoModel {
  int id;
  int documento;
  int parcela;
  String descricao;
  double valor;
  String vencimento;
  String tipo;
  int referenciaMes;
  int referenciaAno;
  int fornecedorId;
  String codBarras;
  String linhaDigitavel;
  String notaFiscal;
  int tipoLancamentoId;
  int baixaId;
  double valorBaixado;
  int categoriaId;
  int usuarioId;
  bool privado;
  String deletedAt;
  String createdAt;
  String updatedAt;

  LancamentoModel(
      {this.id,
      this.documento,
      this.parcela,
      this.descricao,
      this.valor,
      this.vencimento,
      this.tipo,
      this.referenciaMes,
      this.referenciaAno,
      this.fornecedorId,
      this.codBarras,
      this.linhaDigitavel,
      this.notaFiscal,
      this.tipoLancamentoId,
      this.baixaId,
      this.valorBaixado,
      this.categoriaId,
      this.usuarioId,
      this.privado,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  LancamentoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    documento = json['documento'];
    parcela = json['parcela'];
    descricao = json['descricao'];
    valor = json['valor'];
    vencimento = json['vencimento'];
    tipo = json['tipo'];
    referenciaMes = json['referenciaMes'];
    referenciaAno = json['referenciaAno'];
    fornecedorId = json['fornecedorId'];
    codBarras = json['codBarras'];
    linhaDigitavel = json['linhaDigitavel'];
    notaFiscal = json['notaFiscal'];
    tipoLancamentoId = json['tipoLancamentoId'];
    baixaId = json['baixaId'];
    valorBaixado = json['valorBaixado'];
    categoriaId = json['categoriaId'];
    usuarioId = json['usuarioId'];
    privado = json['privado'];
    deletedAt = json['deletedAt'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['documento'] = this.documento;
    data['parcela'] = this.parcela;
    data['descricao'] = this.descricao;
    data['valor'] = this.valor;
    data['vencimento'] = this.vencimento;
    data['tipo'] = this.tipo;
    data['referenciaMes'] = this.referenciaMes;
    data['referenciaAno'] = this.referenciaAno;
    data['fornecedorId'] = this.fornecedorId;
    data['codBarras'] = this.codBarras;
    data['linhaDigitavel'] = this.linhaDigitavel;
    data['notaFiscal'] = this.notaFiscal;
    data['tipoLancamentoId'] = this.tipoLancamentoId;
    data['baixaId'] = this.baixaId;
    data['valorBaixado'] = this.valorBaixado;
    data['categoriaId'] = this.categoriaId;
    data['usuarioId'] = this.usuarioId;
    data['privado'] = this.privado;
    data['deletedAt'] = this.deletedAt;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
