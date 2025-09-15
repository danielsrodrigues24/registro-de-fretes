import 'package:registro_de_fretes/models/load_type.dart';
import 'package:registro_de_fretes/models/status.dart';
import 'package:registro_de_fretes/models/customer.dart';
import 'package:registro_de_fretes/models/vehicle.dart';

class Shipment {
  final String id;
  final String origin;
  final String destination;
  final LoadType loadType;
  final double value;
  final DateTime dateTime;
  final Status status;
  final Customer customer;
  final Vehicle vehicle;

  const Shipment({
    required this.id,
    required this.origin,
    required this.destination,
    required this.loadType,
    required this.value,
    required this.dateTime,
    required this.status,
    required this.customer,
    required this.vehicle,
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
      customer: Customer.fromJson(json['customer']),
      vehicle: Vehicle.fromJson(json['vehicle']),
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
      'customer': customer.toJson(),
      'vehicle': vehicle.toJson(),
    };
  }
}
