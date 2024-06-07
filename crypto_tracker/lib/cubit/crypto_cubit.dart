import 'package:crypto_tracker/models/coin_enum.dart';
import 'package:crypto_tracker/models/preco.dart';
import 'package:crypto_tracker/repositories/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoCubit extends Cubit<List<Preco>> {
  CryptoCubit()
      : super([
          Preco(deMoeda: CoinEnum.USD, paraMoeda: CoinEnum.BRL, valor: 0.0),
          Preco(deMoeda: CoinEnum.BTC, paraMoeda: CoinEnum.BRL, valor: 0.0),
          Preco(deMoeda: CoinEnum.ETH, paraMoeda: CoinEnum.BRL, valor: 0.0),
          Preco(deMoeda: CoinEnum.BTC, paraMoeda: CoinEnum.USD, valor: 0.0),
          Preco(deMoeda: CoinEnum.ETH, paraMoeda: CoinEnum.USD, valor: 0.0),
        ]);

  Future<void> fetchData() async {
    List<Preco> listPreco = [];
    listPreco.add(await Repository.getExchange(CoinEnum.USD, CoinEnum.BRL));
    listPreco.add(await Repository.getExchange(CoinEnum.BTC, CoinEnum.BRL));
    listPreco.add(await Repository.getExchange(CoinEnum.ETH, CoinEnum.BRL));
    listPreco.add(await Repository.getExchange(CoinEnum.BTC, CoinEnum.USD));
    listPreco.add(await Repository.getExchange(CoinEnum.ETH, CoinEnum.USD));
    emit(listPreco);
  }
}
