import 'dart:convert';
import 'package:crypto_tracker/models/coin_enum.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class Repository {
  //https://rest.coinapi.io/v1/exchangerate/BTC/BRL
  //https://rest.coinapi.io/v1/exchangerate/BTC/USD

  //Nos "headers" da solicitação tem q colocar:
  //"X-CoinAPI-Key": "YOUR-API-KEY"

  static Future<Map<String,dynamic>> getExchange(CoinEnum deMoeda, CoinEnum paraMoeda) async {
    await dotenv.load(fileName: "keys.env");
    String apiKey = dotenv.env["API_KEY"]!;
    var url = Uri.https("rest.coinapi.io", "/v1/exchangerate/${deMoeda.name}/${paraMoeda.name}");
    http.Response response = await http.get(url, headers: {"X-CoinAPI-Key": apiKey});
    Map<String,dynamic> retorno = json.decode(response.body);
    print(retorno);
    return retorno;
  }
}