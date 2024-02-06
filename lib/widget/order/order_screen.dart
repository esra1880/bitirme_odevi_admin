
import 'package:foodiee_admin/services/assets_manager.dart';
import 'package:foodiee_admin/widget/order/empty_bag.dart';
import 'package:foodiee_admin/widget/order/order_widget.dart';
import 'package:foodiee_admin/widget/title_text.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  static const routName = "/OrderScreen";

  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  bool isEmptyOrders =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
            centerTitle: true,
            leading: IconButton(
              onPressed: (){
                if(Navigator.canPop(context)){
                  Navigator.pop(context);
                }
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 20,
              ),
            ),
            title: const TitleTextWidget(label: "All Orders")
        ),
        body: isEmptyOrders
            ?
        EmptyBagWidget(
            imagePath: AssetsManager.urun,
            title: "Henüz görüntülenen ürün mevcut değil",
            subtitle: " ",
            buttonText: " ")
            : ListView.separated(
            itemBuilder: (ctx, index){
              return const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 2, vertical:  6),
                child: OrdersWidgetFree(),

              );
            },
            separatorBuilder: (BuildContext context, int index){
              return const Divider(
                color:Colors.black54,
              );
            },
            itemCount: 10)





    );
  }
}
