import 'package:flutter/material.dart';

class DrawerTNP extends StatelessWidget{
  //Drawer to access others pages
  const DrawerTNP({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}