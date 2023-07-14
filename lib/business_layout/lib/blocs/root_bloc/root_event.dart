part of 'root_bloc.dart';

@freezed
class RootEvent with _$RootEvent {
  const factory RootEvent.onInit() = _InitRootEvent;

  const factory RootEvent.saveFireplaceInLocalStorage({
    required HomeNetworkModel homeNetworkModel,
  }) = _SaveFireplaceInLocalStorageRootEvent;

  const factory RootEvent.addFireplaceInLocalStorage({
    required String nameHomeWifiNetwork,
    required String password,
  }) = _AddFireplaceInLocalStorageRootEvent;

  const factory RootEvent.changeFireplaceDataFromLocalStorage({
    required HomeNetworkModel homeNetworkModel,
  }) = _ChangeFireplaceDataFromLocalStorageRootEvent;

  const factory RootEvent.deleteFireplaceInLocalStorage({
    required String keyWifiName,
    required String keyMacAddress,
  }) = _DeleteFireplaceInLocalStorageRootEvent;

  const factory RootEvent.viewDataInLocalStorage({
    required String keyWifi,
  }) = _ViewDataInLocalStorageRootEvent;
}
