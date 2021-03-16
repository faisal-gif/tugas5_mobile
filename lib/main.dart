

import 'package:flutter/material.dart';
import 'package:tugas_baru/page/home_page.dart';
import 'package:tugas_baru/page/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => HomePage(),
      '/item' : (context) => ItemPage(),
    },
  ));
}

