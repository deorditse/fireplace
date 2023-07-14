import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'home_network_model.g.dart';
part 'home_network_model.freezed.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
// @HiveType(typeId: 0)
// //для хранения объекта целиком - эти аннотации нужны для hive_generator
// class HomeNetworkModel extends HiveObject {
//   //храню в таком виде
//   @HiveField(0)
//   String customName;
//   @HiveField(1)
//   String nameHomeWifiNetwork;
//   @HiveField(2)
//   String nameFromHardListWifiName;
//   @HiveField(3)
//   String ipAddressFireplace;
//   @HiveField(4)
//   String macAddressInLocalWiFi;
//   @HiveField(5)
//   String password;
//
//   HomeNetworkModel({
//     required this.customName,
//     required this.nameHomeWifiNetwork,
//     required this.nameFromHardListWifiName,
//     required this.ipAddressFireplace,
//     required this.macAddressInLocalWiFi,
//     required this.password,
//   });
// }

@unfreezed
class HomeNetworkModel extends HiveObject with _$HomeNetworkModel {
  ///чтобы использвать все методы
  HomeNetworkModel._();

  @HiveType(typeId: 0)
  factory HomeNetworkModel({
    @HiveField(0) required String customName,
    @HiveField(1) required String nameHomeWifiNetwork,
    @HiveField(2) required String nameFromHardListWifiName,
    @HiveField(3) required String ipAddressFireplace,
    @HiveField(4) required String macAddressInLocalWiFi,
    @HiveField(5) required String password,

  }) = _HomeNetworkModel;

// factory ChatMenuHiveModel.fromJson(Map<String, Object?> json) =>
//     _$ChatMenuHiveModelFromJson(json);
}
