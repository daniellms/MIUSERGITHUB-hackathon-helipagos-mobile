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
          child: const BotonesNavegacion(texto: 'Listado de Monedas',iconoData: Icons.list_alt_outlined,),
        ),
        const SizedBox(height: 10,),
        InkWell(
          onTap: () {
            context.push(GorouterConfiguracion.splash);
          },
          child: const BotonesNavegacion(texto: 'Imagen de Presentacion ',iconoData: Icons.image),
        )
      ],
    ),
  );
  }
}

class BotonesNavegacion extends StatelessWidget {

  final String  texto;
  final IconData iconoData;
  // final String  text;
  const BotonesNavegacion({
    super.key,  required this.texto, required this.iconoData,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         Text(
          texto
        ),
       const  SizedBox(width: 10),
          Icon(
          iconoData
        ),
      ],
    );
  }
}