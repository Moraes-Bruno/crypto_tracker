import 'package:crypto_tracker/models/coin_enum.dart';
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
    //Repository.getExchange(CoinEnum.BTC, CoinEnum.BRL);
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
          child: const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(children: [
                DolarWidget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [CoinWidget(), CoinWidget()],
                    ),
                    Column(
                      children: [CoinWidget(), CoinWidget()],
                    )
                  ],
                ),
              ])),
        ),
      ),
    );
  }
}
