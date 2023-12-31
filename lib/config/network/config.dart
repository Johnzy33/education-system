
import 'network_config.dart';

enum Flavor {
  DEVELOPMENT,
  RELEASE,
}

class Config {
  static Flavor? appFlavor;

  static String get BASEURL {
    switch (appFlavor) {
      case Flavor.RELEASE:
        return NetworkConfig.devBaseUrl;
      case Flavor.DEVELOPMENT:
      default:
        return NetworkConfig.devBaseUrl;
    }
  }
}