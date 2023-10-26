import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/go_router.dart';
import 'package:http/http.dart' as http;

import 'dart:convert' as convert;
 
class ListadoMonedaView extends StatefulWidget {
  const ListadoMonedaView({super.key});

  @override
  State<ListadoMonedaView> createState() => _ListadoMonedaViewState();
}

class _ListadoMonedaViewState extends State<ListadoMonedaView> {

@override
  void initState() {
    traerData();
    super.initState();
  }

  void traerData() async {
  
  // var url = 
  //     Uri.https('https://api.coingecko.com/api/v3/coins/list');
  // // Await the http get response, then decode the json-formatted response.
  // var response = await http.get(url);
  // if (response.statusCode == 200) {
  //   // var jsonResponse =
  //   //     convert.jsonDecode(response.body) as Map<String, dynamic>;
  //   // var itemCount = jsonResponse['totalItems'];
  //   // print('Numero de peticiones acerca de  http: $itemCount.');
  //   print('Numero de peticiones acerca de  http: ${response.body}.');
  // } else {
  //   print('Peticion Fallida ${response.statusCode}.'); // Request failed with status:
  // }




  // Future<List<dynamic>> listaData;
  // void Future<List<dynamic>> getObjetosData() async {
  //   var url =  Uri.https("https://api.coingecko.com/api/v3/coins/list?include_platform=true");

  //   final response = await http.get(url);

  //   if (response.statusCode == 200) {
  //     print(response.body);
  //   }else{
  //     throw Exception("Fallo");
  //   }
  // // return ''
  //   // return  
  // }
}


@override
Widget build(BuildContext context) {


  return Container(
    color: Colors.blue,
    child: Container(
      padding:const  EdgeInsets.symmetric(horizontal: 10),
      color: Colors.orange,
      child: const  SingleChildScrollView(
        child:  Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
            'Listado de Moneda',
            style: TextStyle(
             color: Colors.black45,
             fontSize: 30
                )),
              TextField(
               decoration: InputDecoration(
                 hintText: 'Buscar',
                  filled: true
               ),
             ),
            SizedBox(height: 20),
            RowMoneda(),
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
    return InkWell(
       onTap: () {
                context.push(GorouterConfiguracion.detalle);
                // print("Deberia Navegar");
              },
      child: const Row(
        children: [
          Text('Moneda 1'),
          SizedBox(width: 10),
           Icon(
           Icons.attach_money
          ),
          // Text('Pagina Principal '),
        ],
      ),
    );
  }
}