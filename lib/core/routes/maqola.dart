import 'package:flutter/material.dart';
import 'package:med_g/core/functions/app_functions.dart';
import 'package:med_g/core/route_names/maqola.dart';

import '../../features/maqola/presentation/pages/maqola_screen.dart';

class MaqolaRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MaqolaRouteNames.maqola:
        return fade(const MaqolaScreen());
    }
    return null;
  }
}
