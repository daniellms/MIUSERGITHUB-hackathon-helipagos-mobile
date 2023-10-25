import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/go_router.dart';
 
class DetalleMonedaView extends StatelessWidget {
  const DetalleMonedaView({super.key});
 
@override
Widget build(BuildContext context) {
  return Container(
    color: Colors.blue,
    child: Container(
      padding:const  EdgeInsets.symmetric(horizontal: 10),
      color: Colors.grey,
      child: SingleChildScrollView(
        child:  Column(
          children: [
            const Text(
             'Detalle Moneda',
             style: TextStyle(
              color: Colors.black45,
              fontSize: 20
            )
            ),
            InkWell(
              // onTap: () {
              //   // context.go(GorouterConfiguracion.detalle);
              //   context.push(GorouterConfiguracion.home);
              //   // print("Deberia Navegar");
              // },
              child: Container(
                // color: Colors.blue,
                child:  const RowMoneda())),
            
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