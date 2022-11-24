import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:food_list/entities/food_info.dart';
import 'package:food_list/widgets/food_card_widget.dart';

class FoodListScreen extends StatefulWidget {
  const FoodListScreen({super.key});

  @override
  State<FoodListScreen> createState() => _FoodListScreenState();
}

class _FoodListScreenState extends State<FoodListScreen> {
  final List<FoodInfo> foods = [
    const FoodInfo(test: 'test1'),
    const FoodInfo(test: 'test2'),
    const FoodInfo(test: 'test3'),
  ];

  void onPressedOrderButton() {
    // todo: Go to Order Screen, Send food details
  }

  String getAmountOrder() {
    // todo: edit this function
    return '0';
  }

  // todo: decrease amount function
  // todo: increase amount function

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: foods
            .map<Widget>(
              (item) => FoodCardWidget(
                foodInfo: item,
                onTabIncrease: () {},
                onTabDecrease: () {},
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
