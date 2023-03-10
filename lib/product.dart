import "package:flutter/material.dart";

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]) {
    print('[Product Widget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Product Widget] build()');
    // TODO: implement build
    return Column(
      children: products
          .map((element) => Card(
                child: Column(children: <Widget>[
                  Image.asset("assets/anna.png"),
                  Text(element),
                ]),
              ))
          .toList(),
    );
  }
}
