import 'dart:ui' as ui;

import 'package:on_demand_data_loading_chalenge/main.dart' as entrypoint;

Future<void> main() async {
  if (true) {
    await ui.webOnlyInitializePlatform();
  }
  entrypoint.main();
}
