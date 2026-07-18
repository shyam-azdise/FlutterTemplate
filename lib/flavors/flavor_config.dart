enum Flavor { dev, staging, prod }

class FlavorConfig {
  final Flavor flavor;
  final String name;
  final String baseUrl;

  static FlavorConfig? _instance;

  factory FlavorConfig({
    required Flavor flavor,
    required String name,
    required String baseUrl,
  }) {
    _instance ??= FlavorConfig._internal(flavor, name, baseUrl);
    return _instance!;
  }

  FlavorConfig._internal(this.flavor, this.name, this.baseUrl);

  static FlavorConfig get instance {
    if (_instance == null) {
      throw Exception('FlavorConfig is not initialized');
    }
    return _instance!;
  }

  static bool isProd() => _instance?.flavor == Flavor.prod;

  static bool isStaging() => _instance?.flavor == Flavor.staging;

  static bool isDev() => _instance?.flavor == Flavor.dev;
}
