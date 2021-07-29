import 'package:flutter/material.dart';
import 'package:medical_shop/menu/akun/menu_akun.dart';
import 'package:medical_shop/menu/keranjang/menu_keranjang.dart';
import 'package:medical_shop/menu/produk/menu_product.dart';
import 'package:medical_shop/menu/transaksi/menu_transaksi.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [MenuProduct(), Keranjang(), Transaksi(), Akun()];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _bottomNavCurrentIndex = index;
            });
          },
          currentIndex: _bottomNavCurrentIndex,
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              icon: new Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: Text('Beranda',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 0
                          ? Colors.blue
                          : Colors.grey,
                      fontFamily: 'Oxygen')),
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset('assets/images/chart-on.png'),
              icon: Image.asset('assets/images/chart.png'),
              title: Text('Keranjang',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 1
                          ? Colors.blue
                          : Colors.grey,
                      fontFamily: 'Oxygen')),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.assignment,
                color: Colors.blue,
              ),
              icon: Icon(
                Icons.assignment,
                color: Colors.grey,
              ),
              title: Text('Transaksi',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 2
                          ? Colors.blue
                          : Colors.grey,
                      fontFamily: 'Oxygen')),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.people,
                color: Colors.blue,
              ),
              icon: Icon(
                Icons.people,
                color: Colors.grey,
              ),
              title: Text('Profil',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 3
                          ? Colors.blue
                          : Colors.grey,
                      fontFamily: 'Oxygen')),
            ),
          ],
        ));
  }
}
