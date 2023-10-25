import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/go_router.dart';
 
class HomeView extends StatelessWidget {
  const HomeView({super.key});
 
@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            context.push(GorouterConfiguracion.listadoMonedas);
          },
          child: const Row(
            children: [
               Text(
                'Listado de Monedas'
              ),
              SizedBox(width: 10),
               Icon(
               Icons.view_list_sharp
              ),
            ],
          ),
        )
      ],
    ),
  );
  }
}