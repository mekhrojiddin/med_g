import 'package:flutter/material.dart';
import 'package:med_g/core/functions/app_functions.dart';
import 'package:med_g/core/route_names/calendar_route_name.dart';
import 'package:med_g/features/calendar/presentation/pages/calendar_screen.dart';

class CalendarRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case CalendarRouteNames.calendar:
        return fade(const CalendarScreen());
    }
    return null;
  }
}
