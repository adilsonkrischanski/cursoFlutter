enum StatusPagamento { pendente, pago, reembolsado }

void main() {
  StatusPagamento statusPagamento = StatusPagamento.pago;
  print(statusPagamento);
  print(statusPagamento.index);


}
