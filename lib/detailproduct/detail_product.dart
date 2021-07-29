import 'package:flutter/material.dart';
import 'package:medical_shop/menu/keranjang/menu_keranjang.dart';
import 'package:medical_shop/model/model_product.dart';

import 'componen-detail/cart_counter.dart';

class DetailsProduct extends StatelessWidget {
  final Product product;

  const DetailsProduct({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/images/chart1.png'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Keranjang()));
            },
          ),
          SizedBox(width: 10)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(product.image),
                SafeArea(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(1),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFFFF6464),
                              shape: BoxShape.circle,
                            ),
                            child: FavoriteButton(),
                          ),
                        ],
                      )),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                product.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Harga',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Oxygen',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 40.0),
                      Text(
                        'Rp.${product.harga}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Oxygen',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Deskirpsi',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Oxygen',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 80),
                    child: Text(
                      '${product.deskripsi}',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Oxygen',
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: <Widget>[
                      Text(
                        'Jumlah',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Oxygen',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 23.0),
                      CartCounter(),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        height: 50,
                        width: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.add_shopping_cart),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Di Tambah ke Keranjang'),
                              backgroundColor: Colors.lightGreen,
                            ));
                          },
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            color: Colors.blue,
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text('Menu Belum Tersedia'),
                                backgroundColor: Colors.red,
                              ));
                            },
                            child: Text(
                              "Buy  Now".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Oxygen'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.white,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
        if (isFavorite) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Di Tambah ke Favorite'),
            backgroundColor: Colors.lightGreen,
          ));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Di Hapus dari Favorite'),
            backgroundColor: Colors.red,
          ));
        }
      },
    );
  }
}
