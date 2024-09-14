import 'package:collection/collection.dart';
import 'package:deliveryapp/models/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:deliveryapp/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier{
  final List <Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger", 
      description: "A juicy beef patty with melted cheddar, lettuce, tomato and a  hint of oniom", 
      imagePath: "lib/images/burgers/classic.jpeg", 
      price: 0.99, 
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]),

        Food(
      name: "BBQ Bacon Burger", 
      description: "A juicy beef patty with melted cheddar, lettuce, tomato and a  hint of oniom", 
      imagePath: "lib/images/burgers/bbq.jpeg", 
      price: 8.99, 
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]),
        Food(
      name: "Veggie Burger", 
      description: "A juicy beef patty with melted cheddar, lettuce, tomato and a  hint of oniom", 
      imagePath: "lib/images/burgers/veggie.jpeg", 
      price: 10.99, 
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]),

        Food(
      name: "Blue Moonurger", 
      description: "A juicy beef patty with melted cheddar, lettuce, tomato and a  hint of oniom", 
      imagePath: "lib/images/burgers/bluemoon.jpeg", 
      price: 0.99, 
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Fried Egg", price: 1.99),
        Addon(name: "Spicy mayo", price: 2.99),
      ]),
      //salad

        Food(
      name: "Caesar Salad", 
      description: "Crisp, romaine lettuce, parmesan cheese, croutons and Caesar dressing", 
      imagePath: "lib/images/salads/caesar.jpeg", 
      price: 0.99, 
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 2.99),
      ]),

       Food(
      name: "Greek Salad", 
      description: "Crisp, romaine lettuce, parmesan cheese, croutons and Caesar dressing", 
      imagePath: "lib/images/salads/greek.jpeg", 
      price: 0.99, 
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 2.99),
      ]),
       Food(
      name: "Quinoa Salad", 
      description: "Crisp, romaine lettuce, parmesan cheese, croutons and Caesar dressing", 
      imagePath: "lib/images/salads/quinoa.jpeg", 
      price: 0.99, 
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 2.99),
      ]),
       Food(
      name: "Onions Salad", 
      description: "Crisp, romaine lettuce, parmesan cheese, croutons and Caesar dressing", 
      imagePath: "lib/images/salads/onions.jpeg", 
      price: 0.99, 
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 2.99),
      ]),
      //desserts
       Food(
      name: "Strawberry Cake", 
      description: "Yummy strawberry cake", 
      imagePath: "lib/images/desserts/straw.jpeg", 
      price: 0.99, 
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.99),
        Addon(name: "Cojun Spice", price: 2.99),
      ]),
 Food(
      name: "Strawberry Cake", 
      description: "Yummy strawberry cake", 
      imagePath: "lib/images/desserts/straw.jpeg", 
      price: 0.99, 
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.99),
        Addon(name: "Cojun Spice", price: 2.99),
      ]),
 Food(
      name: "Strawberry Cake", 
      description: "Yummy strawberry cake", 
      imagePath: "lib/images/desserts/straw.jpeg", 
      price: 0.99, 
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.99),
        Addon(name: "Cojun Spice", price: 2.99),
      ]),
 Food(
      name: "Strawberry Cake", 
      description: "Yummy strawberry cake", 
      imagePath: "lib/images/desserts/straw.jpeg", 
      price: 0.99, 
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.99),
        Addon(name: "Cojun Spice", price: 2.99),
      ]),
//sides
 Food(
      name: "Strawberry Cake", 
      description: "Yummy strawberry cake", 
      imagePath: "lib/images/desserts/straw.jpeg", 
      price: 0.99, 
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.99),
        Addon(name: "Cojun Spice", price: 2.99),
      ]),
       Food(
      name: "Strawberry Cake", 
      description: "Yummy strawberry cake", 
      imagePath: "lib/images/desserts/straw.jpeg", 
      price: 0.99, 
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.99),
        Addon(name: "Cojun Spice", price: 2.99),
      ]),
       Food(
      name: "Strawberry Cake", 
      description: "Yummy strawberry cake", 
      imagePath: "lib/images/desserts/straw.jpeg", 
      price: 0.99, 
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.99),
        Addon(name: "Cojun Spice", price: 2.99),
      ]),
       Food(
      name: "Strawberry Cake", 
      description: "Yummy strawberry cake", 
      imagePath: "lib/images/desserts/straw.jpeg", 
      price: 0.99, 
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.99),
        Addon(name: "Cojun Spice", price: 2.99),
      ]),

      //drinks
       Food(
      name: "Strawberry Cake", 
      description: "Yummy strawberry cake", 
      imagePath: "lib/images/desserts/straw.jpeg", 
      price: 0.99, 
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.99),
        Addon(name: "Cojun Spice", price: 2.99),
      ]),
      Food(
      name: "Strawberry Cake", 
      description: "Yummy strawberry cake", 
      imagePath: "lib/images/desserts/straw.jpeg", 
      price: 0.99, 
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.99),
        Addon(name: "Cojun Spice", price: 2.99),
      ]),
      Food(
      name: "Strawberry Cake", 
      description: "Yummy strawberry cake", 
      imagePath: "lib/images/desserts/straw.jpeg", 
      price: 0.99, 
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.99),
        Addon(name: "Cojun Spice", price: 2.99),
      ]),
      Food(
      name: "Strawberry Cake", 
      description: "Yummy strawberry cake", 
      imagePath: "lib/images/desserts/straw.jpeg", 
      price: 0.99, 
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.99),
        Addon(name: "Cojun Spice", price: 2.99),
      ]),

  ];
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  final List<CartItem> _cart =[];
  String _deliveryAddress =' 99Bollywood Street';
  String get deliveryAddress => _deliveryAddress;
  void addToCart(Food food, List<Addon> selectedAddons){
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons = ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    if(cartItem != null){
      cartItem.quantity++;
    }else{
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons),
      );
    }
    notifyListeners();
   }
   void removeFromCart(CartItem cartItem){
    int cartIndex = _cart.indexOf(cartItem);
    if(cartIndex != -1){
      if(_cart[cartIndex].quantity > 1){
        _cart[cartIndex].quantity--;
      }else{
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
   }
   double getTotalPrice(){
    double total = 0.0;
    for(CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;
      for(Addon addon in cartItem.selectedAddons){
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
   }
   int getTotalItemCount(){
    int totalItemCount =0;
    for(CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
   }
   void clearCart(){
    _cart.clear();
    notifyListeners();
   }
   void updateDeliveryAdress(String newAddress){
    _deliveryAddress = newAddress;
    notifyListeners();
   }
   String displayCartReceipt(){
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    String formattedDate = DateFormat('yyyy-MM-dd MM:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("------------------");

    for (final cartItem in _cart){
      receipt.writeln(
        "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
        if(cartItem.selectedAddons.isNotEmpty){
          receipt.writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
        }
        receipt.writeln();
    }
    receipt.writeln("------------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
   }
   String _formatPrice(double price){
    return "\$${price.toStringAsFixed(2)}";
   }
   String _formatAddons(List<Addon> addons){
    return addons.map((addon) => "${addon.name} (${_formatPrice(addon.price)})").join(", ");
   }
}