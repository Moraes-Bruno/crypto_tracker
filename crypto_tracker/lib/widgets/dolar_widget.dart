import 'package:crypto_tracker/models/preco.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DolarWidget extends StatefulWidget {
  DolarWidget({required this.preco, super.key});

  Preco preco;

  @override
  State<DolarWidget> createState() => _DolarWidgetState();
}

class _DolarWidgetState extends State<DolarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 370,
      height: 130,
      decoration: ShapeDecoration(
          shape: Border.all(color: Colors.black), color: Colors.grey),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("/images/eua.png"),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "${widget.preco.deMoeda.name}/${widget.preco.paraMoeda.name}",
                style: const TextStyle(fontSize: 30),
              ),
            ],
          ),
          Text(
            widget.preco.valor.toStringAsPrecision(3).replaceAll(".", ","),
            style: const TextStyle(fontSize: 50),
          ),
        ],
      ),
    );
  }
}
