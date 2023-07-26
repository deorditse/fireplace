import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fireplace/ui_layout/src/pages/pages.dart';
import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:models/models.dart';
import 'package:business_layout/business_layout.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const Root());
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RootBloc>(
      create: (_) => RootBloc()..add(const RootEvent.onInit()),
      child: StreamBuilder<ConnectivityResult>(
        stream: Connectivity().onConnectivityChanged,
        initialData: ConnectivityResult.wifi,
        builder: (c, AsyncSnapshot<ConnectivityResult> snapshot) {
          final state = snapshot.data;
          return state == ConnectivityResult.wifi
              ? const MyApp()
              : WifiOffScreenPage(state: state);
        },
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: RootConstApp.snackBarKey,
      debugShowCheckedModeBanner: false,
      theme: themeDark,
      home: const SearchFireplacePage(),
    );
  }
}
