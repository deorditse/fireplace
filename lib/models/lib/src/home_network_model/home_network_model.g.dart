// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_network_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HomeNetworkModelAdapter extends TypeAdapter<HomeNetworkModel> {
  @override
  final int typeId = 0;

  @override
  HomeNetworkModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HomeNetworkModel(
      customName: fields[0] as String,
      nameHomeWifiNetwork: fields[1] as String,
      nameFromHardListWifiName: fields[2] as String,
      ipAddressFireplace: fields[3] as String,
      macAddressInLocalWiFi: fields[4] as String,
      password: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HomeNetworkModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.customName)
      ..writeByte(1)
      ..write(obj.nameHomeWifiNetwork)
      ..writeByte(2)
      ..write(obj.nameFromHardListWifiName)
      ..writeByte(3)
      ..write(obj.ipAddressFireplace)
      ..writeByte(4)
      ..write(obj.macAddressInLocalWiFi)
      ..writeByte(5)
      ..write(obj.password);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeNetworkModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
