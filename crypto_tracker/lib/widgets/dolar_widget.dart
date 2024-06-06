import 'package:crypto_tracker/models/preco.dart';
import 'package:flutter/material.dart';

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
              Image(
                image: AssetImage("/images/eua.png"),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "${widget.preco.deMoeda.name}/${widget.preco.paraMoeda.name}",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
          Text(
            widget.preco.valor.toStringAsPrecision(3).replaceAll(".", ","),
            style: TextStyle(fontSize: 50),
          ),
        ],
      ),
    );
  }
}
