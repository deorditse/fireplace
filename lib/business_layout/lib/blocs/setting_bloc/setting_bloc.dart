import 'dart:developer';
import 'package:data_layout/data_layout.dart';
import 'package:logger/logger.dart';
import 'package:models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_event.dart';

part 'setting_state.dart';

part 'setting_bloc.freezed.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
class SettingBloc extends Bloc<SettingEvent, SettingState> {
  // final RepositoryFireplace _repositoryFireplace = RepositoryFireplace();
  // final NetworkServices _networkServices = NetworkServices();
  // final LocalNetworkStorage _localNetworkStorage = LocalNetworkStorage();
  FireplaceDataModel? _fireplaceDataFromSettingPage;

  SettingBloc() : super(const SettingState()) {
    on<SettingEvent>(
      (SettingEvent event, _) {
        event.when<void>(
          onInit: _onInit,
        );
      },
    );
  }

  void _onInit(FireplaceDataModel fireplaceData) {
    _fireplaceDataFromSettingPage = fireplaceData;
  }

  // Future<void> _changeFireplaceDataFromLocalStorage(
  //     HomeNetworkModel homeNetworkModel) async {
  //   try {
  //     log("setting_bloc _changeFireplaceDataFromLocalStorage");
  //   } catch (e) {
  //     Logger().log(Level.error,
  //         '[setting_bloc] _changeFireplaceDataFromLocalStorage catch error  $e');
  //   }
  // }
}
