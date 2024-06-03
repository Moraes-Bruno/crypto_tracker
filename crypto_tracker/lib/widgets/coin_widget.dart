import 'package:flutter/material.dart';

class CoinWidget extends StatefulWidget {
  const CoinWidget({super.key});

  @override
  State<CoinWidget> createState() => _CoinWidgetState();
}

class _CoinWidgetState extends State<CoinWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 180,
      height: 180,
      decoration: ShapeDecoration(
          shape: Border.all(color: Colors.black), color: Colors.grey),
      child: const Column(
        children: [
          Text(
            "BTC/BRL",
            style: TextStyle(fontSize: 30),
          ),
          Text(
            "999.999,99",
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
