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
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFFEFEEEE),
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  foodInfo.image,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      foodInfo.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(foodInfo.price.toString()),
                  ],
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      foodInfo.increaseAmount();
                      onTabIncrease();
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                        ),
                        color: Color(0xFF91ECA5),
                      ),
                      height: 50,
                      width: 50,
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      foodInfo.decreaseAmount();
                      onTabDecrease();
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                        ),
                        color: Color.fromRGBO(237, 155, 155, 1),
                      ),
                      height: 50,
                      width: 50,
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
