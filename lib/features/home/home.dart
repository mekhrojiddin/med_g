import 'package:flutter/material.dart';

import 'package:med_g/core/routes/asosiy.dart';
import 'package:med_g/core/routes/calendar.dart';
import 'package:med_g/core/routes/chat.dart';
import 'package:med_g/core/routes/maqola.dart';
import 'package:med_g/core/routes/profile.dart';


import 'package:med_g/features/home/widgets/destination_page.dart';
import 'package:med_g/features/home/widgets/nav_bar.dart';

import 'package:flutter_hooks/flutter_hooks.dart';




class HomePage extends HookWidget {
  const HomePage({super.key});
  final List<Widget> pages = const [
       DestinationPage(
                      onGenerateRoute: AsosiyRoute.onGenerateRoute,
                    ),
                    DestinationPage(
                      onGenerateRoute: MaqolaRoute.onGenerateRoute,
                    ),
                    DestinationPage(
                      onGenerateRoute: ChatRoute.onGenerateRoute,
                    ),
                    DestinationPage(
                      onGenerateRoute: CalendarRoute.onGenerateRoute,
                    ),
                    DestinationPage(
                      onGenerateRoute: ProfileRoute.onGenerateRoute,
                    ),
  ];
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    final selectedIndex = useState(0);
    final pageController = PageController(initialPage: selectedIndex.value);

    return Scaffold(
      key: scaffoldKey,
      bottomNavigationBar: MainNavigationBar(
        action: (value) =>
            _onPageSelected(value, pageController, selectedIndex, scaffoldKey),
        selectedIndex: selectedIndex.value,
      ),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (value) =>
            _onPageSelected(value, pageController, selectedIndex, scaffoldKey),
        children: pages,
      ),
    );
  }

  void _onPageSelected(int value, PageController pageController,
      ValueNotifier<int> selectedIndex, GlobalKey<ScaffoldState> scaffoldKey) {

    pageController.animateToPage(value,
        duration: const Duration(milliseconds: 100), curve: Curves.easeIn);
    selectedIndex.value = value;
  }
}
