import 'package:flutter/material.dart';
import 'package:traders_billing/views/home/components/charts/available_storage.dart';
import 'package:traders_billing/views/home/components/home_navigation.dart';

class AvailableStorageView extends StatelessWidget {
  const AvailableStorageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          color: Colors.white,
          height: 800,
          width: 1000,
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: HomePageNav(),
              ),
              SizedBox(width: 400, height: 400, child: ASPieChart()),
            ],
          ),
        )
      ],
    );
  }
}
