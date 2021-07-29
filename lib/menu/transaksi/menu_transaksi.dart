import 'package:flutter/material.dart';
import 'package:medical_shop/dashboard/dashboard.dart';
import 'package:medical_shop/menu/favorite/favorite.dart';
import 'package:medical_shop/model/model_product.dart';

class Transaksi extends StatefulWidget {
  @override
  _TransaksiState createState() => new _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
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
          'Transaksi',
          style: TextStyle(color: Colors.black, fontFamily: 'Oxygen'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              showSearch(context: context, delegate: SearchData());
            },
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Favorite())),
          ),
          SizedBox(width: 10)
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TransaksiProduct transaksiProduk = transaksi[index];
          return InkWell(
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.monetization_on),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Pembayaran',
                            style:
                                TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('${transaksiProduk.tanggal}'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Rp. ${transaksiProduk.jumlahTransaksi}',
                            style: TextStyle(fontFamily: 'Oxygen'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${transaksiProduk.status}',
                            style: TextStyle(fontFamily: 'Oxygen'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: keranjang.length,
      ),
    );
  }
}

class SearchData extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, "");
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(
        'Maaf Search Belum Sempurna',
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggest = query.isEmpty
        ? suggestSearch
        : search.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        title: RichText(
          text: TextSpan(
              text: suggest[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggest[index].substring(query.length),
                    style: TextStyle(color: Colors.grey))
              ]),
        ),
      ),
      itemCount: suggest.length,
    );
  }
}
