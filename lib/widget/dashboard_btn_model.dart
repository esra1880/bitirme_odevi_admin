


import 'package:foodiee_admin/screens/editorUploadProduct.dart';
import 'package:foodiee_admin/screens/search_screen.dart';
import 'package:foodiee_admin/services/assets_manager.dart';
import 'package:foodiee_admin/widget/order/order_screen.dart';
import 'package:flutter/material.dart';

class DashboardButtonModel{
  final String text, imagePath;
  final Function onPressed;

  DashboardButtonModel({
    required this.text,
    required this.imagePath,
    required this.onPressed,

});

  static List<DashboardButtonModel> dashboardBtnList(context)=>[

    DashboardButtonModel(
        text: "üRÜN EKLE",
        imagePath: AssetsManager.ekle,
        onPressed: (){
          Navigator.pushNamed(context, EditorUploadProductScreen.routName);
        },
    ),
    DashboardButtonModel(
      text: "TÜM ÜRÜNLER",
      imagePath: AssetsManager.urun,
      onPressed: (){
        Navigator.pushNamed(context, SearchScreen.routName);
      },
    ),

    DashboardButtonModel(
      text: "View Orders",
      imagePath: AssetsManager.order,
      onPressed: (){
        Navigator.pushNamed(context, OrderScreen.routName);
      },
    ),


  ];




}