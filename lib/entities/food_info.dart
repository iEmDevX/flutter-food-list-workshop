class FoodInfo {
  FoodInfo({
    required this.name,
    required this.image,
    required this.price,
    this.amount = 0,
  });

  final String name;
  final String image;
  final int price;
  int amount;

  // todo : function increase/decrease amount
  void increaseAmount() {
    amount++;
  }

  void decreaseAmount() {
    if (amount > 0) amount--;
  }
}
