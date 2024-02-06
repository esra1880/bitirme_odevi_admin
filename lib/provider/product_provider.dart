import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodiee_admin/models/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';


import 'package:flutter/foundation.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> get getProducts {
    return products;
  }

  ProductModel? findByProId(String productId) {
    if (products.where((element) => element.productId == productId).isEmpty) {
      return null;
    }
    return products.firstWhere((element) => element.productId == productId);
  }

  List<ProductModel> findByCategory({required String categoryName}) {
    List<ProductModel> categoryList = products
        .where((element) => element.productCategory.toLowerCase().contains(
      categoryName.toLowerCase(),
    ))
        .toList();
    return categoryList;
  }

  List<ProductModel> searchQuery({
    required String searchText,
    required List<ProductModel> passedList,
  }) {
    List<ProductModel> searchList = passedList
        .where((element) => element.productTitle.toLowerCase().contains(
      searchText.toLowerCase(),
    ))
        .toList();
    return searchList;
  }

  List<ProductModel> products = [];
}
