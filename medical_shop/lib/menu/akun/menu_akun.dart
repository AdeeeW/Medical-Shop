import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_shop/dashboard/dashboard.dart';

class Akun extends StatefulWidget {
  @override
  _AkunState createState() => new _AkunState();
}

class _AkunState extends State<Akun> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Dashboard())),
        ),
        title: Text(
          'Profil',
          style: TextStyle(color: Colors.black, fontFamily: 'Oxygen'),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: 115,
              width: 115,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/photo.png"),
                  ),
                  Positioned(
                    right: -16,
                    bottom: 0,
                    child: SizedBox(
                      height: 46,
                      width: 46,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(color: Colors.white),
                        ),
                        color: Color(0xFFF5F6F9),
                        onPressed: () {},
                        child: Icon(Icons.camera_alt_outlined),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5F6F9),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Menu Belum Tersedia'),
                    backgroundColor: Colors.red,
                  ));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.person_outlined,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                        child: Text(
                      'Akun Saya',
                      style: TextStyle(fontFamily: 'Oxygen'),
                    )),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5F6F9),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Menu Belum Tersedia'),
                    backgroundColor: Colors.red,
                  ));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.notifications_none,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                        child: Text(
                      'Notifikasi',
                      style: TextStyle(fontFamily: 'Oxygen'),
                    )),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5F6F9),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Menu Belum Tersedia'),
                    backgroundColor: Colors.red,
                  ));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                        child: Text(
                      'Pengaturan',
                      style: TextStyle(fontFamily: 'Oxygen'),
                    )),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5F6F9),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Menu Belum Tersedia'),
                    backgroundColor: Colors.red,
                  ));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.help_outline,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                        child: Text(
                      'Pusat Bantuan',
                      style: TextStyle(fontFamily: 'Oxygen'),
                    )),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5F6F9),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text(
                              'Apakah Anda Yakin?',
                              style: TextStyle(fontFamily: 'Oxygen'),
                            ),
                            content: Text(
                              'Keluar dari Aplikasi ini?',
                              style: TextStyle(fontFamily: 'Oxygen'),
                            ),
                            actions: [
                              FlatButton(
                                  onPressed: () {
                                    SystemNavigator.pop();
                                  },
                                  child: Text(
                                    'EXIT',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontFamily: 'Oxygen',
                                        fontWeight: FontWeight.bold),
                                  )),
                              FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(false);
                                  },
                                  child: Text(
                                    'CANCEL',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontFamily: 'Oxygen',
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.login,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                        child: Text(
                      'Keluar',
                      style: TextStyle(fontFamily: 'Oxygen'),
                    )),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
