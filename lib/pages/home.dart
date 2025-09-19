import 'package:flutter/material.dart';
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: (){},
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: (){},
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2), // Cor da sombra
              spreadRadius: 2,  // Expansão da sombra
              blurRadius: 6,    // Suavização
              offset: Offset(3, 3), // Posição da sombra (x, y)
            )
          ]
        ),
        child: Row(
          children: [
            Icon(Icons.edit_calendar),
            TextField(
              decoration: InputDecoration(
                hintText: "Pesquisar...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(12.0)
                )
              ),
              onChanged: (value) {},
            )
          ],
        ),
      ),
    );
  }
}

