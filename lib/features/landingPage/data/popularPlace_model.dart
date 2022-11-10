import 'package:flutter/cupertino.dart';

class PopularPlaceModel{
   int? id;
   String? imageUrl;
   String? title;
   String? description;
   String? amount;
   bool? isFeatured;

  PopularPlaceModel({
    this.id,
    this.title,
    this.description,
    this.imageUrl,
    this.isFeatured,
    this.amount
});

  factory PopularPlaceModel.fromJson(Map<String, dynamic> json) => PopularPlaceModel(
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


  /* test api
{
  "id": "1",
  "image": "",
  "title": "",
  "description": "",
  "isFeatured": "true/false",
  "amount": ""
}
    */
