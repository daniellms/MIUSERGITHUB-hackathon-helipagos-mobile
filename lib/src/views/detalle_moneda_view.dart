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
      child: const SingleChildScrollView(
        child:  Column(
          children: [
             Text(
             'Detalle Moneda',
             style: TextStyle(
              color: Colors.black45,
              fontSize: 20
            )
            ),
             SizedBox(height: 10),

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
        Text('La Moneda'), ///[Aqui debo redibir mi clase en cuestion usando un bloc builder consumiendola del state]
        SizedBox(width: 10),
         Icon(
         Icons.attach_money
        ),
        // Text('Pagina Principal '),
      ],
    );
  }
}