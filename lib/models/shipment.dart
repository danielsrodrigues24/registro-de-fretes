import 'package:registro_de_fretes/models/load_type.dart';
import 'package:registro_de_fretes/models/status.dart';


class Shipment {
  final String id;
  final String origin;
  final String destination;
  final LoadType loadType;
  final double value;
  final DateTime dateTime;
  final Status status;
  final int customerId;
  final int vehicleId;

  const Shipment({
    required this.id,
    required this.origin,
    required this.destination,
    required this.loadType,
    required this.value,
    required this.dateTime,
    required this.status,
    required this.customerId,
    required this.vehicleId,
  });

  factory Shipment.fromJson(Map<String, dynamic> json) {
    return Shipment(
      id: json['id'],
      origin: json['origin'],
      destination: json['destination'],
      loadType: LoadType.values.firstWhere((e) => e.name == json['loadType']),
      value: json['value'],
      dateTime: DateTime.parse(json['dateTime']),
      status: Status.values.firstWhere((e) => e.name == json['status']),
      customerId: json['customer'],
      vehicleId: json['vehicle'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'origin': origin,
      'destination': destination,
      'loadType': loadType.name,
      'value': value,
      'dateTime': dateTime.toIso8601String(),
      'status': status.name,
      'customer': customerId,
      'vehicle': vehicleId,
    };
  }
}
