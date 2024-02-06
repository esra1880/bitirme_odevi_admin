


import 'package:foodiee_admin/models/categories_model.dart';
import 'package:foodiee_admin/services/assets_manager.dart';
import 'package:flutter/material.dart';

class AppConstans {


  static List<CategoriesModel> categoriesList2= [
    CategoriesModel(
      id: "Pizza",
      name: "Pizza",
      image: AssetsManager.pizza,
    ),
    CategoriesModel(
      id: "Hamburger",
      name: "Hamburger",
      image: AssetsManager.hamburger,
    ),
    CategoriesModel(
      id: "Sandviç",
      name: "Sandviç",
      image: AssetsManager.sandvic,
    ),
    CategoriesModel(
      id: "Döner",
      name: "Döner",
      image: AssetsManager.doner,
    ),
    CategoriesModel(
      id: "Kebap",
      name: "Kebap",
      image: AssetsManager.kebap,
    ),
    CategoriesModel(
      id: "Tatlı",
      name: "Tatlı",
      image: AssetsManager.tatli,
    ),
    CategoriesModel(
      id: "İçecek",
      name: "İçecek",
      image: AssetsManager.icecek,
    ),
  ];


  static List<String> categorieList = [
    'Pizza',
    'Hamburger',
    'Sandviç',
    'Döner',
    'Kebap',
    'Tatlı',
    'İçecek'


  ];

  static List<DropdownMenuItem<String>>? get categoriesDropDownList{
    List<DropdownMenuItem<String>>? menuItem=
        List<DropdownMenuItem<String>>.generate(categorieList.length, (index) => DropdownMenuItem(
            child: Text(categorieList[index]),
             value: categorieList[index],
        ),
        );
        return menuItem;
  }
}