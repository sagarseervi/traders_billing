import 'package:flutter/material.dart';
import 'package:traders_billing/components/buttons.dart';
import 'package:traders_billing/views/add_farmer/addFarmer.dart';
import 'package:traders_billing/views/profile/components/profile_table.dart';
import 'package:traders_billing/views/profile/profile_navigation.dart';

class Profileview extends StatelessWidget {
  const Profileview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final AppProvider appProvider = Provider.of<AppProvider>(context);
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: ProfileNavigation(),
              ),
              AddButton(
                text: "Add Farmer",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AddFarmerView();
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: 40,
              ),
              const Divider(
                color: Colors.grey,
                height: 10,
                thickness: 3,
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(
                height: 40,
              ),
              ProfileTable(),
            ],
          ),
        )
      ],
    );
  }
}
