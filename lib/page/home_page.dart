import 'package:flutter/material.dart';
import 'package:tugas_baru/models/Item.dart';
import 'package:tugas_baru/page/item_page.dart';




class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, stok: 25,satuan: 1),
    Item(name: 'Salt', price: 2000, stok: 33,satuan: 2)
  ];
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.blueGrey.shade900,
          title: Text("Home Page"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context) => ItemPage(tempItem: item)));
                },
                              child: Card(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Text(item.name)),
                        Expanded(
                            child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.center,
                        )),
                        Expanded(
                            child: Text(
                          item.stok.toString(),
                          textAlign: TextAlign.end,
                        )),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
