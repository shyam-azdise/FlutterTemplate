

import 'package:flutter_template/flavors/flavor_config.dart';
import 'package:flutter_template/main_common.dart';

void main(List<String> args) {
  mainCommon(
    flavor: Flavor.staging,
    name: 'Staging',
    baseUrl: 'https://staging-api.theleaderscommunity.com',
  );
}
