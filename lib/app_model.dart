class appmodel {
  final String? name, category, img, desc;
  final double? price;

  appmodel(
      {required this.name,
        required this.category,
        required this.price,
        required this.img,
        required this.desc});

  factory appmodel.fromMap(Map map) {
    return appmodel(

        name: map['name'],
        category: map['category'],
        price: map['price'],
        img: map['img'],
        desc: map['desc']);
  }
}
