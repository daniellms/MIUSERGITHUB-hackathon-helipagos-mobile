import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hackathon_mobile/src/routes/go_router.dart';
 
class HomePage extends StatelessWidget {
  // const ({super.key});

  final Widget child;

  const HomePage({super.key, required this.child});
 
@override
Widget build(BuildContext context) {
  return Scaffold( 
    appBar: AppBar(
      title: const Text('Pagina Principal')),
    body:  child,
    
     
   );
  }
}

