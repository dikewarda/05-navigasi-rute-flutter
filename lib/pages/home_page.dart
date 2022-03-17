import 'package:flutter/material.dart';
import 'package:navigasi_rute/models/item.dart';
import 'package:navigasi_rute/widgets/listview.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(
        name: 'Gula Pasir Gulaku',
        price: '12.000',
        weight: '1000',
        img: 'assets/images/gula.jpg'),
    Item(
        name: 'Garam Cap Kapal',
        price: '3.000',
        weight: '500',
        img: 'assets/images/garam.jpg'),
    Item(
        name: 'Tepung Segitiga Biru',
        price: '10.000',
        weight: '500',
        img: 'assets/images/tepung.jpg'),
    Item(
        name: 'Gula Aren',
        price: '7.000',
        weight: '250',
        img: 'assets/images/aren.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Shopping List - 2031710147 Dike Ayu Wardani"),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: MyListView(
            items: items,
            page: '/item',
          ),
        ));
  }
}
