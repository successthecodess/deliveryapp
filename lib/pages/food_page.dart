import 'package:deliveryapp/components/my_button.dart';
import 'package:deliveryapp/main.dart';
import 'package:deliveryapp/models/restaurant.dart';
import 'package:deliveryapp/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:deliveryapp/models/food.dart';
import 'package:provider/provider.dart';
class FoodPage extends StatefulWidget{
  final Food food;
  final Map<Addon, bool> selectedAddons ={};
   FoodPage({
    super.key,
    required this.food
  }) {
    for(Addon addon in food.availableAddons){
      selectedAddons[addon] = false;
    }
  }
  @override
  State<FoodPage> createState() => _FoodPageState();
}
class _FoodPageState extends State<FoodPage> {
  void addToCart(Food food, Map<Addon, bool> selectedAddons){
    Navigator.pop(context);
    List<Addon> currentlySelectedAddons =[];
    for(Addon addon in widget.food.availableAddons){
      if(widget.selectedAddons[addon] == true){
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: SingleChildScrollView(
         child: Column(
        children: [
          Image.asset(widget.food.imagePath),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
          Text(widget.food.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
         
         Text('\$${widget.food.price}',
          style: TextStyle( fontSize: 16,
          color: Theme.of(context).colorScheme.primary),
          ),
         const SizedBox(height: 10,),
          Text(widget.food.description),
          const SizedBox(height: 10,),
      
          Divider(color: Theme.of(context).colorScheme.secondary),
          const SizedBox(height: 10,),
          Text("Add-ons",
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
          ),
          const SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.secondary),
                borderRadius: BorderRadius.circular(8),
              ),
          child: ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.food.availableAddons.length,
            itemBuilder: (context, index){
              Addon addon = widget.food.availableAddons[index];
            return CheckboxListTile(
              title: Text(addon.name),
              subtitle: Text('\$${addon.price}',
              style: TextStyle(color: Theme.of(context).colorScheme.primary),),
              value: widget.selectedAddons[addon],
             onChanged: (bool? value){
              setState(() {
                widget.selectedAddons[addon] = value!;
              });
             },
             );
          },
          ),
          ),
            ],
          ),
          ),
          MyButton(text: "Add to cart", onTap: () => {addToCart(widget.food, widget.selectedAddons)},
          ),
           const SizedBox(height: 25,),
        ],
        ),
      
      ),
    );
  }
}