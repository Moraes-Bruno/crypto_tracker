import 'package:crypto_tracker/cubit/crypto_cubit.dart';
import 'package:crypto_tracker/pages/home_page.dart';
import 'package:crypto_tracker/pages/welcome_page.dart';
import 'package:crypto_tracker/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CryptoCubit>(create: (_) => CryptoCubit()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Crypto Tracker',
          initialRoute: '/',
          routes: {
            '/': (context) => const WelcomePage(),
            '/second': (context) => const HomePage(),
          },
          theme: Provider.of<ThemeProvider>(context).themeData,
        ));
  }
}
