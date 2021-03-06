import 'package:flutter/material.dart';
import 'package:tugas_baru/models/Item.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;

  ItemPage({Key key, this.tempItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blueGrey.shade700,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey.shade900,
            title: Text("Item Detail"),
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          body: Container(
            alignment: Alignment.center,
            color: Colors.black87,
            child: Column(children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Nama : " + tempItem.name,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Price : " + tempItem.price.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Stock : " + tempItem.stok.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text("Satuan : " + tempItem.satuan.toString() + "Kg",
                  style: TextStyle(color: Colors.white))
            ]),
          )),
    );
  }
  // This widget is the root of your application.

}
