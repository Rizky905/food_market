part of 'models.dart';

enum FoodType { new_food, popular_food, recommended }

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food({
    this.id,
    this.picturePath,
    this.name,
    this.description,
    this.ingredients,
    this.price,
    this.rate,
    this.types = const [],
  });

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          "https://s3.dimanaja.com/dimanaja/cover/8c3a769652c85f88f7be674657314037d57dd7a5.webp",
      name: "Sate",
      description: "cobain ah enak",
      ingredients: "bawang merah, daging",
      price: 150000,
      rate: 4.0,
      types: [FoodType.new_food]),
  Food(
      id: 2,
      picturePath:
          "https://www.resepistimewa.com/wp-content/uploads/ayam-bakar-spesial.jpg",
      name: "Ayam bakar",
      description: "cobain ah enak",
      ingredients: "bawang merah, ayam",
      price: 150000,
      rate: 3.5,
      types: [FoodType.new_food, FoodType.popular_food, FoodType.recommended]),
  Food(
      id: 3,
      picturePath:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8aQM3uLVwvcy5dd5EKFZf4NhEgwWyHbzfbw&usqp=CAU",
      name: "Ikan bakar",
      description: "cobain ah enak",
      ingredients: "bawang merah, ikan",
      price: 150000,
      rate: 3.7),
  Food(
      id: 4,
      picturePath:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8aQM3uLVwvcy5dd5EKFZf4NhEgwWyHbzfbw&usqp=CAU",
      name: "Ikan bakar",
      description: "cobain ah enak",
      ingredients: "bawang merah, ikan",
      price: 150000,
      rate: 3.7),
  Food(
      id: 5,
      picturePath:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8aQM3uLVwvcy5dd5EKFZf4NhEgwWyHbzfbw&usqp=CAU",
      name: "Ikan bakar",
      description: "cobain ah enak",
      ingredients: "bawang merah, ikan",
      price: 150000,
      rate: 3.7),
];
