import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
    required this.name,
    required this.price,
    required this.weight,
    required this.img,
  }) : super(key: key);

  final String name;
  final String price;
  final String img;
  final String weight;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(child: Image.asset(img)),
            Expanded(child: Text(name)),
            Expanded(
              child: Text(
                "Rp " + price.toString(),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
                child: Text(
              weight.toString() + " gram",
              textAlign: TextAlign.end,
            ))
          ],
        ),
      ),
    );
  }
}
