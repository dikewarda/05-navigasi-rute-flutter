import 'package:flutter/material.dart';
import 'package:navigasi_rute/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
        appBar: AppBar(
          title: Text(itemArgs.name),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Image.asset(itemArgs.img)),
              Expanded(child: Text("Nama: " + itemArgs.name)),
              Expanded(child: Text("Berat: " + itemArgs.weight)),
              Expanded(
                  child: Text(
                "Harga: Rp " + itemArgs.price,
              ))
            ],
          ),
        ));
  }
}
