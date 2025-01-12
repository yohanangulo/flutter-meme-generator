import 'package:flutter/material.dart';
import 'package:learn_freezed/core/config/config.dart';
import 'package:learn_freezed/core/app/app.dart';
import 'package:learn_freezed/core/service_locator/service_locator.dart';

Future<void> mainCommon(Flavor flavor) async {
  //
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await Config.initialize(flavor);
  runApp(const App());
}
