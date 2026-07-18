import 'package:flutter_template/flavors/flavor_config.dart';
import 'package:flutter_template/main_common.dart';


void main(List<String> args) {
  mainCommon(
    flavor: Flavor.dev,
    name: 'Development',
    baseUrl: 'https://dev-api.theleaderscommunity.com',
  );
}