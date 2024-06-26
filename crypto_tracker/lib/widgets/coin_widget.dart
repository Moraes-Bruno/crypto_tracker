import 'package:crypto_tracker/models/coin_enum.dart';
import 'package:crypto_tracker/models/preco.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoinWidget extends StatefulWidget {
  CoinWidget({required this.preco, super.key});

  Preco preco;

  @override
  State<CoinWidget> createState() => _CoinWidgetState();
}

class _CoinWidgetState extends State<CoinWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 180,
      height: 115,
      decoration: ShapeDecoration(
          shape: Border.all(color: Colors.black), color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(widget.preco.deMoeda == CoinEnum.BTC
                      ? "assets/images/bitcoin.png"
                      : "assets/images/ethereum.png"),
                ),
                Text(
                  "${widget.preco.deMoeda.name}/${widget.preco.paraMoeda.name}",
                  style: const TextStyle(fontSize: 30),
                ),
              ],
            ),
            Text(
              widget.preco.valor.toStringAsFixed(2).replaceAll(".", ","),
              style: const TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
