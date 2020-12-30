part of 'models.dart';

class Food {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food({
    this.id,
    this.picturePath,
    this.name,
    this.description,
    this.ingredients,
    this.price,
    this.rate,
  });
}

List<Food> mockFood = [
  Food(
      id: 1,
      picturePath:
          "https://s3.dimanaja.com/dimanaja/cover/8c3a769652c85f88f7be674657314037d57dd7a5.webp",
      name: "sate",
      description: "cobain ah enak",
      ingredients: "bawang merah, daging",
      price: 150000,
      rate: 4.0),
  Food(
      id: 2,
      picturePath:
          "https://www.resepistimewa.com/wp-content/uploads/ayam-bakar-spesial.jpg",
      name: "ayam bakar",
      description: "cobain ah enak",
      ingredients: "bawang merah, ayam",
      price: 150000,
      rate: 3.5),
  Food(
      id: 3,
      picturePath:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8aQM3uLVwvcy5dd5EKFZf4NhEgwWyHbzfbw&usqp=CAU",
      name: "ikan bakar",
      description: "cobain ah enak",
      ingredients: "bawang merah, ikan",
      price: 150000,
      rate: 3.7),
];
