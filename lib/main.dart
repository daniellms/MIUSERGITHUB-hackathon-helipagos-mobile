import 'package:flutter/material.dart';
import 'package:hackathon_mobile/src/routes/go_router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _router = GorouterConfiguracion();
    
    return MaterialApp.router(
        title: 'HeliPagos',
        theme: ThemeData.dark(),
        routerConfig: _router.myRouter,
        debugShowCheckedModeBanner: false,
      );
  }
}