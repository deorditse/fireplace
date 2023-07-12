import 'package:data_layout/data_layout.dart';
import 'package:logger/logger.dart';
import 'package:models/models.dart';
import 'package:uni_links/uni_links.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connected_directly_event.dart';

part 'connected_directly_state.dart';

part 'connected_directly_bloc.freezed.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
class ConnectedDirectlyBloc
    extends Bloc<ConnectedDirectlyEvent, ConnectedDirectlyState> {
  ConnectedDirectlyBloc() : super(const ConnectedDirectlyState()) {
    on<ConnectedDirectlyEvent>(
      (ConnectedDirectlyEvent event, _) {
        event.when<void>(
          onInit: _onInit,
        );
      },
    );
  }

  void _onInit() {}
}
