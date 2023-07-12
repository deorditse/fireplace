import 'package:hive/hive.dart';

part 'home_network_model.g.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
@HiveType(typeId: 0)
//для хранения объекта целиком - эти аннотации нужны для hive_generator
class HomeNetworkModel extends HiveObject {
  //храню в таком виде
  @HiveField(0)
  String customName;
  @HiveField(1)
  String nameHomeWifiNetwork;
  @HiveField(2)
  String nameFromHardListWifiName;
  @HiveField(3)
  String ipAdressFireplace;
  @HiveField(4)
  String macAdreesInLocalWiFi;
  @HiveField(5)
  String password;

  HomeNetworkModel({
    required this.customName,
    required this.nameHomeWifiNetwork,
    required this.nameFromHardListWifiName,
    required this.ipAdressFireplace,
    required this.macAdreesInLocalWiFi,
    required this.password,
  });
}
