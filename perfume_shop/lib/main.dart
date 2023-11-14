import 'package:flutter/material.dart';
import 'package:perfume_shop/constants/colors.dart';
import 'package:perfume_shop/screens/home_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MainScreen(),
        );
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(
            color: MyColors.orangeColor,
            blurRadius: 1,
            spreadRadius: 1,
          ),
        ]),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Image(
                      height: 24,
                      width: 24,
                      image: AssetImage('images/home.png')),
                  activeIcon: Column(
                    children: [
                      Image(
                          height: 24,
                          width: 24,
                          image: AssetImage('images/home.png')),
                      SizedBox(height: 5),
                      Container(
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                            color: MyColors.orangeColor,
                            shape: BoxShape.circle),
                      )
                    ],
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Image(
                      height: 24,
                      width: 24,
                      image: AssetImage('images/cart.png')),
                  activeIcon: Column(
                    children: [
                      Image(
                          height: 24,
                          width: 24,
                          image: AssetImage('images/cart.png')),
                      SizedBox(height: 5),
                      Container(
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                            color: MyColors.orangeColor,
                            shape: BoxShape.circle),
                      )
                    ],
                  ),
                  label: 'Cart'),
              BottomNavigationBarItem(
                  icon: Image(
                      height: 24,
                      width: 24,
                      image: AssetImage('images/favorite.png')),
                  activeIcon: Column(
                    children: [
                      Image(
                          height: 24,
                          width: 24,
                          image: AssetImage('images/favorite.png')),
                      SizedBox(height: 5),
                      Container(
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                            color: MyColors.orangeColor,
                            shape: BoxShape.circle),
                      )
                    ],
                  ),
                  label: 'Favorite'),
              BottomNavigationBarItem(
                  icon: CircleAvatar(
                      maxRadius: 14,
                      backgroundImage: AssetImage('images/profile.jpg')),
                  activeIcon: Column(children: [
                    CircleAvatar(
                        maxRadius: 12,
                        backgroundImage: AssetImage('images/profile.jpg')),
                    SizedBox(height: 5),
                    Container(
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                          color: MyColors.orangeColor, shape: BoxShape.circle),
                    ),
                  ]),
                  label: 'Profile')
            ]),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: [HomeScreen(), HomeScreen(), HomeScreen(), HomeScreen()],
      ),
    );
  }
}
