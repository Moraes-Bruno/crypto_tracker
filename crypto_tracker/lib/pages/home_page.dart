import 'package:crypto_tracker/models/coin_enum.dart';
import 'package:crypto_tracker/models/preco.dart';
import 'package:crypto_tracker/repositories/repository.dart';
import 'package:flutter/material.dart';

import '../widgets/coin_widget.dart';
import '../widgets/dolar_widget.dart';
import '../repositories/repository.dart';
import '../models/coin_enum.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    //Repository.getExchange(CoinEnum.USD, CoinEnum.BRL);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Crypto Tracker"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          //color: Theme.of(context).colorScheme.surface,
          //margin: const EdgeInsets.only(top: 10),
          child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(children: [
                DolarWidget(
                  preco: Preco(
                      deMoeda: CoinEnum.USD,
                      paraMoeda: CoinEnum.BRL,
                      valor: 5.289526631721579),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CoinWidget(
                          preco: Preco(
                              deMoeda: CoinEnum.BTC,
                              paraMoeda: CoinEnum.BRL,
                              valor: 9999999.92),
                        ),
                        CoinWidget(
                          preco: Preco(
                              deMoeda: CoinEnum.ETH,
                              paraMoeda: CoinEnum.BRL,
                              valor: 9.9),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CoinWidget(
                          preco: Preco(
                              deMoeda: CoinEnum.BTC,
                              paraMoeda: CoinEnum.USD,
                              valor: 9.9),
                        ),
                        CoinWidget(
                          preco: Preco(
                              deMoeda: CoinEnum.ETH,
                              paraMoeda: CoinEnum.USD,
                              valor: 9.9),
                        )
                      ],
                    )
                  ],
                ),
              ])),
        ),
      ),
    );
  }
}
