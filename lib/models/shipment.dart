import 'package:registro_de_fretes/models/load_type.dart';
import 'package:registro_de_fretes/models/status.dart';

class Shipment {
  final String origin;
  final String destination;
  final LoadType loadType;
  final double value;
  final DateTime dateTime;
  final Status status;

  const Shipment({
    required this.origin,
    required this.destination,
    required this.loadType,
    required this.value,
    required this.dateTime,
    required this.status,
  });

  factory Shipment.fromJson(Map<String, dynamic> json) {
    return Shipment(
      origin: json['origin'],
      destination: json['destination'],
      loadType: LoadType.values.firstWhere((e) => e.name == json['loadType']),
      value: json['value'],
      dateTime: DateTime.parse(json['dateTime']),
      status: Status.values.firstWhere((e) => e.name == json['status']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'origin': origin,
      'destination': destination,
      'loadType': loadType.name,
      'value': value,
      'dateTime': dateTime.toIso8601String(),
      'status': status.name,
    };
  }
}

