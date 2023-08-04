import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_task1_favorite/provider/provider_page.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List names = [
    'time',
    'year',
    'people',
    'way',
    'day',
    'man',
    'thing',
    'women',
    'life',
    'child',
    'world'
  ];
  @override
  Widget build(BuildContext context) {
    final object = Provider.of<Provider_class>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('English Words'),
      ),
      body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(names[index]),
              trailing: IconButton(
                icon: object.icn_change(names[index])
                  ? Icon(Icons.favorite,
                    color: Colors.red)
                : Icon(Icons.favorite_border,color: Colors.blue),
                onPressed: () {
                  object.favorites(names[index]);
                },
              ),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cart()));
          },
          label: Text('Favorites')),
    );
  }
}
