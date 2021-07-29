import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 30,
          height: 23,
          child: OutlineButton(
            padding: EdgeInsets.zero,
            child: Icon(
              Icons.remove,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            onPressed: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            // if our item is less  then 10 then  it shows 01 02 like that
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(
          width: 30,
          height: 23,
          child: OutlineButton(
            padding: EdgeInsets.zero,
            child: Icon(
              Icons.add,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            onPressed: () {
              setState(() {
                numOfItems++;
              });
            },
          ),
        ),
      ],
    );
  }

  SizedBox buildOutlineButton(
      {required IconData icon, required Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        onPressed: () => press,
        child: Icon(icon),
      ),
    );
  }
}
