part of 'connected_directly_bloc.dart';

@freezed
class ConnectedDirectlyState with _$ConnectedDirectlyState {
  const factory ConnectedDirectlyState({
    @Default(true) bool isLoading,
    @Default("Готов к старту") String alertMessage,
    @Default(false) bool isSettingButtonActive,
    FireplaceDataModel? fireplaceData,
    FailModel? failModel,
    bool? isUstavkaTimer,
  }) = _ConnectedDirectlyState;
}
