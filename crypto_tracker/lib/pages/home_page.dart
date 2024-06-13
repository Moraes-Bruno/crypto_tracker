import 'package:crypto_tracker/cubit/crypto_cubit.dart';
import 'package:crypto_tracker/models/preco.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';

import '../widgets/coin_widget.dart';
import '../widgets/dolar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool consultou = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    fetchDataAndUpdate();
    //Repository.getExchange(CoinEnum.USD, CoinEnum.BRL);
    timer = Timer.periodic(const Duration(seconds: 30), (Timer t) {
      fetchDataAndUpdate();
    });
  }

    @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

 void fetchDataAndUpdate() {
    context.read<CryptoCubit>().fetchData(); 
    setState(() {
      consultou = true; 
    });
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
          );
        }));
  }
}
