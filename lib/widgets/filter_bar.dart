import 'package:flutter/material.dart';

class FilterBar extends StatelessWidget{
  const FilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
      padding: EdgeInsets.all(5),
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
      child: Row(          
        children: [
          SizedBox(width: 5,),
          Icon(Icons.edit_calendar),
          SizedBox(width: 10,),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Pesquisar...",
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0)
                )
              ),
              onChanged: (value) {},
            ),
          ),
          SizedBox(width: 10,),
          Icon(Icons.filter_alt),
          SizedBox(width: 5,),
    
        ],
      ),
    );
  }
}