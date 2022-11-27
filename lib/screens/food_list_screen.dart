import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:food_list/constants/image_constanst.dart';
import 'package:food_list/entities/food_info.dart';
import 'package:food_list/screens/food_order_screen.dart';
import 'package:food_list/widgets/food_card_widget.dart';

class FoodListScreen extends StatefulWidget {
  const FoodListScreen({super.key});

  @override
  State<FoodListScreen> createState() => _FoodListScreenState();
}

class _FoodListScreenState extends State<FoodListScreen> {
  final List<FoodInfo> foods = [
    FoodInfo(
      name: 'Pizza',
      image: FoodListImage.pizza,
      price: 10,
    ),
    FoodInfo(
      name: 'dumplings',
      image: FoodListImage.dumplings,
      price: 199,
    ),
    FoodInfo(
      name: 'pancake',
      image: FoodListImage.pancake,
      price: 199,
    ),
    FoodInfo(
      name: 'salad',
      image: FoodListImage.salad,
      price: 199,
    ),
  ];

  void onPressedOrderButton() {
    //
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => FoodOrderScreen(foods: foods),
      ),
    );
    // todo: Go to Order Screen, Send food details
  }

  String getAmountOrder() {
    int sum = 0;
    for (var foodInfo in foods) {
      sum += foodInfo.amount;
    }
    return sum.toString();
  }

  void onTapAmount() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: foods
            .map<Widget>(
              (item) => FoodCardWidget(
                foodInfo: item,
                onTabIncrease: onTapAmount,
                onTabDecrease: onTapAmount,
              ),
            )
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onPressedOrderButton,
        tooltip: 'Go to Order Screen',
        child: Badge(
          badgeContent: Text(
            getAmountOrder(),
            style: const TextStyle(color: Colors.white),
          ),
          child: const Icon(Icons.shopping_cart),
        ),
      ),
    );
  }
}
