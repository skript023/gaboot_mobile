// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      stock: json['stock'] as int,
      dimension: json['dimension'] as String,
      weight: (json['weight'] as num).toDouble(),
      weightUnit: json['weightUnit'] as String,
      categoryId: json['categoryId'] as String,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'stock': instance.stock,
      'dimension': instance.dimension,
      'weight': instance.weight,
      'weightUnit': instance.weightUnit,
      'categoryId': instance.categoryId,
      'images': instance.images,
    };
