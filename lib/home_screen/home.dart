import 'package:exam/tabs/home_tab/home_tab.dart';
import 'package:exam/theme/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/logo.png'),
              Image.asset('assets/images/setting.png'),
            ],
          ),
        ),
      ),
      body: tabs.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: ColorManager.lightGreyColor,
        selectedItemColor: ColorManager.primaryColor,
        currentIndex: selectedIndex,
        showUnselectedLabels: true,
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: ColorManager.primaryColor,
        ),
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: ColorManager.lightGreyColor,
        ),
        onTap: onItemTab,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/home.png'),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/search.png'),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/document.png'),
            ),
            label: 'Library',
          ),
        ],
      ),
    );
  }

  void onItemTab(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> tabs = [
    const HomeTab(),
    const Center(child: Text('Search')),
    const Center(child: Text('Library'))
  ];
}
