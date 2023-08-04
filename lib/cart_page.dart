import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_task1_favorite/provider/provider_page.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {

  @override
  Widget build(BuildContext context) {
    final object=Provider.of<Provider_class>(context);
     List nameStore=object.favoriteName;

    return Scaffold(
      appBar: AppBar(
        title: Text('English Word'),
      ),
      body: ListView.builder(
          itemCount: nameStore.length,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              title: Text(nameStore[index]),
              trailing: IconButton(
                icon: object.icn_change(nameStore[index])
                    ? Icon(Icons.favorite,
                    color: Colors.red)
                    : Icon(Icons.favorite_border,color: Colors.blue),
                onPressed: () {
                  object.favorites(nameStore[index]);

                },),
            );
          }),

    );
  }
}
