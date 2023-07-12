part of 'root_bloc.dart';

@freezed
class RootEvent with _$RootEvent {
  const factory RootEvent.onInit() = _InitRootEvent;

  const factory RootEvent.saveFireplaceInLocalStorage({
    required HomeNetworkModel homeNetworkModel,
  }) = _SaveFireplaceInLocalStorageRootEvent;

  const factory RootEvent.deleteFireplaceInLocalStorage({
    required String keyWifiName,
  }) = _DeleteFireplaceInLocalStorageRootEvent;
}
