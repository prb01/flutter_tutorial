import 'package:flutter/material.dart';
import 'package:flutter_app_2/home_page.dart';
import 'package:flutter_app_2/menu_page.dart';
import 'package:flutter_app_2/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const RootPage(),
        theme: ThemeData(primarySwatch: Colors.orange));
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [HomePage(), ProfilePage(), MenuPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text("PRB test")),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          debugPrint("Test test");
        },
        child: const Icon(Icons.add_reaction),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          NavigationDestination(icon: Icon(Icons.restaurant), label: 'Food'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
        backgroundColor: Colors.orange.shade100,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      ),
      body: pages[currentPage],
    );
  }
}
