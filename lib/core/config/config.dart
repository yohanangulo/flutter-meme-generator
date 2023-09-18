import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:learn_freezed/core/service_locator/service_locator.dart';

enum Flavor {
  LOCAL,
  DEV,
  PROD,
}

class Config {
  const Config({
    required this.flavor,
    required this.baseUrl,
  });

  Config._(this.flavor, Map<String, dynamic> flavorConfig)
      : baseUrl = flavorConfig['base_url'];

  static Future<void> initialize(Flavor flavor) async {
    final configJsonString = await rootBundle.loadString('config/config.json');
    final json = jsonDecode(configJsonString) as Map<String, dynamic>;
    final flavorConfig = json[flavor.name];

    getIt.registerLazySingleton<Config>(() => Config._(flavor, flavorConfig));
  }

  final Flavor flavor;
  final String baseUrl;
}

Config get config => getIt<Config>();
