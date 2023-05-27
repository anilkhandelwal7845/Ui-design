import 'package:flutter/material.dart';
import 'package:healthtech/view/final_screen.dart';
import 'package:healthtech/view/fourth.dart';
import 'package:healthtech/view/home_screen.dart';
import 'package:healthtech/view/second_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int currentTab = 0;
  final List screens = const [HomeScreen(), SecondScreen(), FinalScreen() ,FourthScreen()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 4,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentTab = 0;
                        currentScreen = const HomeScreen();
                      });
                    },
                    child: Column(
                      children: [
                        Icon(Icons.home,
                            size: 30,
                            color:
                                currentTab == 0 ? Colors.blue : Colors.black),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              color:
                                  currentTab == 0 ? Colors.blue : Colors.black),
                        ),
                      ],
                    ),
                  ),




                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentTab = 1;
                        currentScreen = const SecondScreen();
                      });
                    },
                    child: Column(
                      children: [
                        Icon(Icons.safety_check,
                            size: 30,
                            color:
                                currentTab == 1 ? Colors.blue : Colors.black),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "PopUp",
                          style: TextStyle(
                              color:
                                  currentTab == 1 ? Colors.blue : Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),


              Row(
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentTab = 2;
                        currentScreen = const FinalScreen();
                      });
                    },
                    child: Column(
                      children: [
                        Icon(Icons.auto_graph,
                            size: 30,
                            color:
                                currentTab == 2 ? Colors.blue : Colors.black),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Final",
                          style: TextStyle(
                              color:
                                  currentTab == 2 ? Colors.blue : Colors.black),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentTab = 3;
                        currentScreen = const FourthScreen();
                      });
                    },
                    child: Column(
                      children: [
                        Icon(Icons.settings,
                            size: 30,
                            color:
                                currentTab == 3 ? Colors.blue : Colors.black),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Setting",
                          style: TextStyle(
                              color:
                                  currentTab == 3 ? Colors.blue : Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
