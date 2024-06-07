import 'package:crypto_tracker/cubit/crypto_cubit.dart';
import 'package:crypto_tracker/models/coin_enum.dart';
import 'package:crypto_tracker/models/preco.dart';
import 'package:crypto_tracker/repositories/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  bool consultou = false;

  @override
  void initState() {
    super.initState();
    //Repository.getExchange(CoinEnum.USD, CoinEnum.BRL);
  }

  @override
  Widget build(BuildContext context) {
    if (!consultou) {
      context.read<CryptoCubit>().fetchData();
      consultou = true;
    }

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: const Text("Crypto Tracker"),
          centerTitle: true,
        ),
        body: BlocBuilder<CryptoCubit, List<Preco>>(
            builder: (context, listPreco) {
          return SingleChildScrollView(
            child: Container(
              //color: Theme.of(context).colorScheme.surface,
              //margin: const EdgeInsets.only(top: 10),
              child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(children: [
                    DolarWidget(
                      preco: listPreco[0],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            CoinWidget(
                              preco: listPreco[1],
                            ),
                            CoinWidget(
                              preco: listPreco[2],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CoinWidget(
                              preco: listPreco[3],
                            ),
                            CoinWidget(
                              preco: listPreco[4],
                            )
                          ],
                        )
                      ],
                    ),
                  ])),
            ),
          );
        }));
  }
}
