import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_list/entities/food_info.dart';

class FoodCardAmountWidget extends StatelessWidget {
  const FoodCardAmountWidget({
    super.key,
    required this.foodInfo,
  });

  final FoodInfo foodInfo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                foodInfo.image,
                width: 50,
                height: 50,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(foodInfo.name),
                Text((foodInfo.price * foodInfo.amount).toString()),
              ],
            ),
            Spacer(),
            Text(foodInfo.amount.toString()),
          ],
        ),
        SizedBox(height: 9),
        Divider(),
      ],
    );
  }
}
