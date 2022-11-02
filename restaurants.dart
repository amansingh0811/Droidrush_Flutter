class CatalogModel {
  static List<Restaurants> restaurants = [
    Restaurants(
        id: 1,
        name: "French Fries",
        description: "Normal French Fries",
        price: 60.00,
        expectedTime: "15",
        image:
            "https://cdn.pixabay.com/photo/2016/11/20/09/06/bowl-1842294__480.jpg")
  ];
}

class Restaurants {
  final int id;
  final String name;
  final String description;
  final num price;
  final String expectedTime;
  final String image;

  Restaurants(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.expectedTime,
      required this.image});

  factory Restaurants.fromMap(Map<String, dynamic> map) {
    return Restaurants(
      id: map["id"],
      name: map["name"],
      description: map["description"],
      price: map["price"],
      expectedTime: map["expectedTime"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "expectedTime": expectedTime,
        "image": image,
      };
}
