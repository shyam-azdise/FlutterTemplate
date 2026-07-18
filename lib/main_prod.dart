

import 'package:flutter_template/flavors/flavor_config.dart';
import 'package:flutter_template/main_common.dart';

void main(List<String> args) {
  mainCommon(
    flavor: Flavor.prod,
    name: 'Production',
    baseUrl: 'https://api.theleaderscommunity.com',
  );
}