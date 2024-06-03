import 'package:crypto_tracker/theme/dark_theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  //tema padrao
  ThemeData _themeData = darkMode; 

  ThemeData get themeData => _themeData;


  set themeData(ThemeData themeData){
    _themeData = themeData;
    //atualiza a interface
    notifyListeners();
  }

}