part of 'connected_directly_bloc.dart';

@freezed
class ConnectedDirectlyState with _$ConnectedDirectlyState {
  const factory ConnectedDirectlyState({
    @Default(true) bool isLoading,
  }) = _ConnectedDirectlyState;
}
