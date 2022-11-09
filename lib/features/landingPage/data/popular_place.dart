class PopularPlaces{
  late int id;
  late String imageUrl;
  late String title;
  late String description;
  String? amount;
  bool? isFeatured;

  PopularPlaces({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.isFeatured,
    this.amount
});

  factory PopularPlaces.fromJson(Map<String, dynamic> json) => PopularPlaces(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      imageUrl: json['image'],
      isFeatured: json['isFeatured'],
      amount: json['amount']
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'image': imageUrl,
    'isFeatured': isFeatured,
    'amount': amount
  };
}
