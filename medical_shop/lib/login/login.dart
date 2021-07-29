import 'package:flutter/material.dart';
import 'package:medical_shop/dashboard/dashboard.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _controllerUsername = TextEditingController();
  TextEditingController _controllerPasswrod = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void validate() {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Sukses Login'),
        backgroundColor: Colors.lightGreen,
      ));
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Dashboard()));
    }
  }

  @override
  void dispose() {
    _controllerUsername.dispose();
    _controllerPasswrod.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                height: 70,
                width: 300,
                child: Image.asset('assets/images/logo.png'),
              ),
              Padding(padding: const EdgeInsets.all(10.0)),
              Container(
                child: Text(
                  'Login to your account',
                  style: TextStyle(
                    fontFamily: 'Staatliches',
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.all(20.0)),
              Container(
                child: TextFormField(
                  controller: _controllerUsername,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Username Harus di Isi';
                    }
                    return null;
                  },
                  style: TextStyle(
                    height: 1.0,
                  ),
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Masukkan Username',
                    hintStyle: TextStyle(fontSize: 15),
                    labelText: 'Username',
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.all(10.0)),
              Container(
                child: TextFormField(
                  controller: _controllerPasswrod,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Passowrd Harus di Isi';
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: 'Masukkan Password',
                      hintStyle: TextStyle(fontSize: 15),
                      labelText: 'Password'),
                ),
              ),
              Padding(padding: const EdgeInsets.only(top: 50)),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: ButtonTheme(
                  minWidth: double.infinity,
                  height: 40.0,
                  child: Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                          top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                        )),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        validate();
                      },
                      color: Color(0xff0095FF),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
