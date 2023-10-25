import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/go_router.dart';
 
class ListadoMonedaView extends StatelessWidget {
  const ListadoMonedaView({super.key});
 
@override
Widget build(BuildContext context) {
  return Container(
    color: Colors.blue,
    child: Container(
      padding:const  EdgeInsets.symmetric(horizontal: 10),
      color: Colors.orange,
      child: SingleChildScrollView(
        child:  Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const  Text(
            'Listado de Moneda',
            style: TextStyle(
             color: Colors.black45,
             fontSize: 30
                )),
            
            InkWell(
              onTap: () {
                // context.go(GorouterConfiguracion.detalle);
                context.push(GorouterConfiguracion.detalle);
                // print("Deberia Navegar");
              },
              child: Container(
                child: RowMoneda())),
            RowMoneda(),
            
          ],
        
      ))),
      );
    
  }
}

class RowMoneda extends StatelessWidget {
  const RowMoneda({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Pagina Principal '),
        SizedBox(width: 10),
         Icon(
         Icons.attach_money
        ),
        // Text('Pagina Principal '),
      ],
    );
  }
}