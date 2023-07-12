part of 'root_bloc.dart';

@freezed
class RootState with _$RootState {
  const factory RootState({
    @Default(true) bool isLoading,
    FailModel? failModel,
    @Default("") wifiName,
    @Default("") ipAddress,
    HomeNetworkModel? fromLocalStorage,
  }) = _RootState;
}
