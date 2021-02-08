import 'package:flutter/material.dart';
import 'package:traders_billing/views/home/components/charts/sales_details.dart';
import 'package:traders_billing/views/home/components/home_navigation.dart';

class SalesDetailsView extends StatelessWidget {
  const SalesDetailsView({Key key}) : super(key: key);

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
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 600,
                  child: SalesDeatilsChart()),
            ],
          ),
        )
      ],
    );
  }
}
