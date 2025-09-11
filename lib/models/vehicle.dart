import 'package:registro_de_fretes/models/body_type.dart';

class Vehicle {
  final String id;
  final String model;
  final String plate;
  final String color;
  final BodyType bodyType;
  final double consumption; // km/l
  final double capacity; // in tons

  const Vehicle({
    required this.id,
    required this.model,
    required this.plate,
    required this.color,
    required this.bodyType,
    required this.consumption,
    required this.capacity,
  }); 

  factory Vehicle.fromJson(Map<String, dynamic> json) {
    return Vehicle(
      id: json['id'],
      model: json['model'],
      plate: json['plate'],
      color: json['color'],
      bodyType: BodyType.values.firstWhere((e) => e.name == json['bodyType']),
      consumption: json['consumption'],
      capacity: json['capacity'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'model': model,
      'plate': plate,
      'color': color,
      'bodyType': bodyType.name,
      'consumption': consumption,
      'capacity': capacity,
    };
  }
}
