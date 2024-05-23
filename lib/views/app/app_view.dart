import 'package:ecity/views/screens/home_screen/home_screen.dart';
import 'package:ecity/views/screens/my_city_screen/my_city_screen.dart';
import 'package:ecity/views/screens/profile_screen/profile_screen.dart';
import 'package:ecity/views/screens/services_screen/services_screen.dart';
import 'package:ecity/views/utils/theme/colors.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppView extends StatefulWidget {
  static Route route({
    int? index,
  }) {
    return MaterialPageRoute(
      builder: (context) => AppView(
        index: index,
      ),
    );
  }

  final int? index;
  const AppView({super.key, this.index});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.index ?? 0;
  }

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ServicesScreen(),
    MyCityScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.8,
        backgroundColor: CustomColors.kContainerBackgroundColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: CustomColors.kDarkSurfaceColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 25.0,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'My City',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
