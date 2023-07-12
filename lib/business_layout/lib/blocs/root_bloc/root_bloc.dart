import 'package:data_layout/data_layout.dart';
import 'package:logger/logger.dart';
import 'package:models/models.dart';
import 'package:uni_links/uni_links.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_event.dart';

part 'root_state.dart';

part 'root_bloc.freezed.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
class RootBloc extends Bloc<RootEvent, RootState> {
  RootBloc() : super(const RootState()) {
    on<RootEvent>(
      (RootEvent event, _) {
        event.when<void>(
          onInit: _onInit,
          saveFireplaceInLocalStorage: _saveFireplaceInLocalStorage,
          deleteFireplaceInLocalStorage: _deleteFireplaceInLocalStorage,
        );
      },
    );
  }

  void _onInit() {

  }

  void _saveFireplaceInLocalStorage(HomeNetworkModel homeNetworkModel) {}

  void _deleteFireplaceInLocalStorage(String keyWifiName) {}
}
