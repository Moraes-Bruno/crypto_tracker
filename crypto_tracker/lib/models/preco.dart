import 'package:crypto_tracker/models/coin_enum.dart';

class Preco {
  Preco({required this.deMoeda, required this.paraMoeda, required this.valor});

  CoinEnum deMoeda;
  CoinEnum paraMoeda;
  double valor;
}
