import 'package:crypto_tracker/models/coin_enum.dart';
import 'package:crypto_tracker/repositories/repository.dart';
import 'package:flutter/material.dart';

import '../widgets/coin_widget.dart';
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
    Repository.getExchange(CoinEnum.BTC, CoinEnum.BRL);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Crypto Tracker"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                CoinWidget(),
                CoinWidget(),
                CoinWidget()
              ],
            ),
            Column(
              children: [
                CoinWidget(),
                CoinWidget(),
                CoinWidget()
              ],
            )
          ],
        ),
      ),
    );
  }
}
