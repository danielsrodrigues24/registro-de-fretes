import 'package:flutter/material.dart';
import 'package:registro_de_fretes/widgets/drawer.dart';
import 'package:registro_de_fretes/widgets/filter_bar.dart';
import 'package:registro_de_fretes/widgets/shipment_card.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text('On the way', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      drawer: DrawerTNP(),
      body: Column(
        children: [
          FilterBar(),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 239, 239),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2), // Cor da sombra
                    spreadRadius: 2,  // Expansão da sombra
                    blurRadius: 6,    // Suavização
                    offset: Offset(3, 3), // Posição da sombra (x, y)
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.all(10),
                    child: Text('HOJE')
                  ),
                  Center(child: ShipmentCard())
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

