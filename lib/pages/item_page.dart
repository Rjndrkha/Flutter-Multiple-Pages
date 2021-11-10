import 'package:flutter/material.dart';
import '../models/item.dart';
import 'home_page.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item _itemArgs = ModalRoute.of(context)?.settings.arguments as Item;
    var columnList = ["ITEM", "STOCK", "PRICE"];
    return Scaffold(
        appBar: AppBar(
          title: Text('Item Page'),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  columnList[0],
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                Expanded(
                  child: Text(
                    columnList[1],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Text(
                    columnList[2],
                    textAlign: TextAlign.end,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.blueAccent)),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(child: Text(_itemArgs.name)),
                Expanded(
                  child: Text(
                    _itemArgs.stock.toString(),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    _itemArgs.price.toString(),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.blueAccent)),
            ),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: new Image.asset(_itemArgs.img),
            ),
          ]),
        ));
  }
}
