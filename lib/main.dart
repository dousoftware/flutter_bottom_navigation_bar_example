import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_bar_example/birinci_view.dart';
import 'package:flutter_bottom_navigation_bar_example/ikinci_view.dart';
import 'package:flutter_bottom_navigation_bar_example/ucuncu_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const BottomNavigationBarExample());
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int secilenItem = 0;
  late List<Widget> tumSayfalarim;
  late BirinciView birinciSayfa;
  late IkinciView ikinciSayfa;
  late UcuncuView ucuncuSayfa;

  @override
  void initState() {
    super.initState();
    birinciSayfa = const BirinciView();
    ikinciSayfa = const IkinciView();
    ucuncuSayfa = const UcuncuView();

    tumSayfalarim = [birinciSayfa, ikinciSayfa, ucuncuSayfa];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amber,
          items: const [
            BottomNavigationBarItem(
              //! Barda görünecek icon
              icon: Icon(
                Icons.access_alarm,
                color: Colors.blue,
              ),
              //! Barda ilgili icon seçilince değişecek renk
              activeIcon: Icon(
                Icons.access_alarm,
                color: Colors.amber,
              ),
              //! Bardaki ilgili iconun arka planı
              backgroundColor: Colors.white,
              //! Bardaki ilgili iconun altındaki yazı
              label: 'Bir',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.wifi,
                  color: Colors.blue,
                ),
                activeIcon: Icon(
                  Icons.wifi,
                  color: Colors.amber,
                ),
                backgroundColor: Colors.white,
                label: 'iki'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.wallet,
                  color: Colors.blue,
                ),
                activeIcon: Icon(
                  Icons.wallet,
                  color: Colors.amber,
                ),
                backgroundColor: Colors.white,
                label: 'Üç'),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: secilenItem,
          onTap: (index) {
            setState(() {
              secilenItem = index;
            });
          },
        ),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Bottom Navigation Bar",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: tumSayfalarim[secilenItem]);
  }
}
