import 'package:registro_de_fretes/models/body_type.dart';
import 'package:registro_de_fretes/models/vehicle.dart';

List<Vehicle> vehiclesMock = [
  Vehicle(
    id: '1',
    model: 'D10',
    plate: 'ABC-1234',
    color: 'RED',
    bodyType: BodyType.pickupOpen,
    consumption: 7.0,
    capacity: 0.8,
  ),
];