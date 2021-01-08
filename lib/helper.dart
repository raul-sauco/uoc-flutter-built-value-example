import 'package:bv/models/built_vehicle.dart';

class Helper {
  static void refresh() {
    var car = BuiltVehicle((b) => b
      ..type = VehicleType.train
      ..brand = 'Tesla'
      ..price = 100000
      ..passengerNames.addAll(['Quan', 'Mike', 'Linda']));

    var copiedCar = car.rebuild((b) => b
      ..brand = 'Boeing '
      ..type = VehicleType.plane);
    print(car);
    print(copiedCar);

    final carJson = car.toJson();
    print(carJson);

    final carFromJson =
        BuiltVehicle.fromJson(carJson).rebuild((b) => b..price = 2000);
    print(carFromJson);
  }
}
