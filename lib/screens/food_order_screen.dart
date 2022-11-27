// todo: add Food Order Screen
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_list/entities/food_info.dart';
import 'package:food_list/widgets/food_card_amount_widget.dart';

class FoodOrderScreen extends StatelessWidget {
  final List<FoodInfo> foods;
  const FoodOrderScreen({super.key, required this.foods});
  int sum() {
    int sum = 0;
    for (var item in foods) {
      sum += item.amount * item.price;
    }
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
                child: Column(
              children: foods.where((element) => element.amount > 0).map((e) => FoodCardAmountWidget(foodInfo: e)).toList(),
            )),
            Divider(),
            Row(
              children: [
                Text('total'),
                Spacer(),
                Text(sum().toString() + '\$'),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('buy'),
            ),
          ],
        ),
      ),
    );
  }
}
