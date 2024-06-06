import 'package:flutter/material.dart';

class DolarWidget extends StatefulWidget {
  const DolarWidget({super.key});

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
                "USD/BRL",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
          Text(
            "9,99",
            style: TextStyle(fontSize: 50),
          ),
        ],
      ),
    );
  }
}
