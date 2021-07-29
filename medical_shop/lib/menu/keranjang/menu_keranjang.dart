import 'package:flutter/material.dart';
import 'package:medical_shop/dashboard/dashboard.dart';
import 'package:medical_shop/menu/favorite/favorite.dart';
import 'package:medical_shop/model/model_product.dart';

class Keranjang extends StatefulWidget {
  @override
  _KeranjangState createState() => new _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
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
          'Keranjang',
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
          final KeranjangProduct keranjangs = keranjang[index];
          return InkWell(
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      keranjangs.image,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            keranjangs.title,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Rp. ${keranjangs.harga}',
                            style: TextStyle(fontFamily: 'Oxygen'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Jumlah',
                            style:
                                TextStyle(fontSize: 13.0, fontFamily: 'Oxygen'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${keranjangs.jumlah}',
                            style: TextStyle(fontFamily: 'Oxygen'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text('Dihapus Dari Keranjang'),
                                backgroundColor: Colors.red,
                              ));
                            },
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
