import 'package:registro_de_fretes/data/customerMock.dart';
import 'package:registro_de_fretes/data/vehiclesMock.dart';
import 'package:registro_de_fretes/models/load_type.dart';
import 'package:registro_de_fretes/models/shipment.dart';
import 'package:registro_de_fretes/models/status.dart';

List<Shipment> shipmentMock = [
  Shipment(
    id: '1',
    origin: 'Girassol',
    destination: 'Cocalzinho',
    vehicle: vehiclesMock[0],
    loadType: LoadType.moving,
    value: 500.00,
    dateTime: DateTime.now().subtract(Duration(days: 2)),
    status: Status.completed, 
    customer: customerMock[0],
  ),
];
