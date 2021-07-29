import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_shop/login/login.dart';

class MenuLogin extends StatefulWidget {
  @override
  _MenuLoginState createState() => _MenuLoginState();
}

class _MenuLoginState extends State<MenuLogin> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.dark));
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 300,
                width: 300,
                child: Lottie.asset(
                  'assets/lottie/hello.json',
                ),
              ),
              SizedBox(
                height: 60,
                width: 300,
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              SizedBox(
                height: 200,
              ),
              SizedBox(
                width: 300,
                child: ButtonTheme(
                  minWidth: double.infinity,
                  height: 40.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: Colors.grey),
                    ),
                    child: Text(
                      'Masuk Ke Aplikasi',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontFamily: 'Oxygen'),
                    ),
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Login();
                      }));
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
