import 'package:flutter/material.dart';
import 'package:food_list/entities/food_info.dart';

class FoodCardWidget extends StatelessWidget {
  final FoodInfo foodInfo;
  // can use VoidCallback Instead of void Function()
  final void Function() onTabIncrease;
  final void Function() onTabDecrease;

  const FoodCardWidget({
    super.key,
    required this.foodInfo,
    required this.onTabIncrease,
    required this.onTabDecrease,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          print("test tap");
        },
        child: Container(
          decoration: const BoxDecoration(color: Colors.grey),
          child: Text(foodInfo.test),
        ),
      ),
    );
  }
}
