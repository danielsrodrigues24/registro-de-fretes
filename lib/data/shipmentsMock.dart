import 'package:registro_de_fretes/models/load_type.dart';
import 'package:registro_de_fretes/models/shipment.dart';
import 'package:registro_de_fretes/models/status.dart';

List<Shipment> shipmentMock = [
  Shipment(
    id: '1',
    origin: 'Girassol',
    destination: 'Cocalzinho',
    vehicleId: 1,
    loadType: LoadType.moving,
    value: 500.00,
    dateTime: DateTime.now().subtract(Duration(days: 2)),
    status: Status.completed, 
    customerId: 1,
  ),
];
