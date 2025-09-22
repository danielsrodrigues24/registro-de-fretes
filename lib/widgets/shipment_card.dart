import 'package:flutter/material.dart';

class ShipmentCard extends StatelessWidget {
  final String origin;
  final String destination;
  final String value;
  final String date;
  final String time;

  const ShipmentCard({
    super.key,
    required this.origin,
    required this.destination,
    required this.value,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.85,
      height: screenHeight * 0.13,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 211, 234, 245),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha((0.2 * 255).toInt()),
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(3, 3),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),   
            child: Row(
              children: [
                Text('DATA:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(width: 8),
                Text(date, style: TextStyle(fontSize: 16, color: Colors.black87)),
                SizedBox(width: 24),
                Text('HORA:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(width: 8),
                Text(time, style: TextStyle(fontSize: 16, color: Colors.black87)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0), 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ORIGEM', style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 60,),
                Text('DESTINO', style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 60,),
                Text('VALOR', style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(origin),
                Text(destination),
                Text(value),
              ],
            ),
          ),
        ],
      ),
    );
  }
}