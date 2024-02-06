import 'package:foodiee_admin/services/assets_manager.dart';
import 'package:foodiee_admin/widget/dashboard_btn_model.dart';
import 'package:foodiee_admin/widget/dashboard_btn_widget.dart';
import 'package:foodiee_admin/widget/title_text.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  static const routName = "/DashboardScreen";
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: Padding(
        padding: const EdgeInsets.all(8.0),


        ),
        title:  TitleTextWidget(label:"FOODİE ADMİN")
        ),
      body: GridView.count(
          crossAxisCount: 2,
              children: List.generate(
          DashboardButtonModel.dashboardBtnList(context).length, (index) =>
        DasboardButtonWidget(
            text: DashboardButtonModel.dashboardBtnList(context)[index].text,
            imagePath: DashboardButtonModel.dashboardBtnList(context)[index].imagePath,
            onPressed: DashboardButtonModel.dashboardBtnList(context)[index].onPressed

        ))


      ),
    );
  }
}
