import 'package:flutter/material.dart';

class DasboardPages extends StatefulWidget {
  const DasboardPages({super.key});

  @override
  State<DasboardPages> createState() => _DasboardPagesState();
}

class _DasboardPagesState extends State<DasboardPages> {
  int curentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(
              10), // Corrected: Padding widget with EdgeInsets
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.start, // Moved to correct position
            children: [
              Container(
                height: 120,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Selamat Datang,",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          toolbarHeight: 40,
          scrolledUnderElevation: 10,
          backgroundColor: Colors.red,
          title: const Text(
            "Dasboard",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              curentPageIndex = index;
            });
          },
          indicatorColor: Colors.red,
          selectedIndex: curentPageIndex,
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              icon: Icon(Icons.home),
              label: "Beranda",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.people,
                color: Colors.white,
              ),
              icon: Icon(Icons.people),
              label: "Profil",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              icon: Icon(Icons.search),
              label: "Pencarian",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.call,
                color: Colors.white,
              ),
              icon: Icon(Icons.call),
              label: "Call Center",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              icon: Icon(Icons.settings),
              label: "Pengaturan",
            )
          ],
        ),
      ),
    );
  }
}
