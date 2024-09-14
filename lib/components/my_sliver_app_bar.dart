import 'package:deliveryapp/pages/cart_page.dart';
import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget{
  final Widget child;
  final Widget title;

  const MySliverAppBar({
    super.key,
    required this.child,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        IconButton(onPressed: (){
          Navigator.pop(context, MaterialPageRoute(builder: (context) => const CartPage()));
        }, icon: Icon(Icons.shopping_cart),)
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text("Sunset Diner"),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(padding: const EdgeInsets.all(8.0),
        child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}