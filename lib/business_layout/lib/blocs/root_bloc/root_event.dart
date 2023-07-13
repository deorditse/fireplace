part of 'root_bloc.dart';

@freezed
class RootEvent with _$RootEvent {
  const factory RootEvent.onInit() = _InitRootEvent;

  const factory RootEvent.saveFireplaceInLocalStorage() =
      _SaveFireplaceInLocalStorageRootEvent;

  const factory RootEvent.addFireplaceInLocalStorage({
    required HomeNetworkModel homeNetworkModel,
  }) = _AddFireplaceInLocalStorageRootEvent;

  const factory RootEvent.changeFireplaceDataFromLocalStorage({
    required HomeNetworkModel homeNetworkModel,
  }) = _ChangeFireplaceDataFromLocalStorageRootEvent;

  const factory RootEvent.deleteFireplaceInLocalStorage({
    required String keyWifiName,
    required String keyMacAddress,
  }) = _DeleteFireplaceInLocalStorageRootEvent;
}
