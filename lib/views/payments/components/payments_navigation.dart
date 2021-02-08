import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:traders_billing/constants.dart';
import 'package:traders_billing/helpers/enumerators.dart';
import 'package:traders_billing/loacator.dart';
import 'package:traders_billing/provider/app_provider.dart';
import 'package:traders_billing/routing/route_names.dart';
import 'package:traders_billing/services/navigation_service.dart';

class PaymentsNavigation extends StatelessWidget {
  const PaymentsNavigation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = Provider.of<AppProvider>(context);
    return Container(
        //alignment: Alignment.center,
        height: 50,
        color: kprimaryYellow,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 20,
              child: PaymentsNavbarItem(
                  text: 'Credit',
                  active: appProvider.currentPage == DisplayedPage.CREDIT,
                  onTap: () {
                    appProvider.changeCurrentPage(DisplayedPage.CREDIT);
                    locator<NavigationService>().navigateTo(PaymentsCredit);
                  }),
            ),
            Expanded(
              flex: 20,
              child: PaymentsNavbarItem(
                  text: 'Debit',
                  active: appProvider.currentPage == DisplayedPage.DEBIT,
                  onTap: () {
                    appProvider.changeCurrentPage(DisplayedPage.DEBIT);
                    locator<NavigationService>().navigateTo(PaymentsDebit);
                  }),
            ),
          ],
        ));
  }
}

class PaymentsNavbarItem extends StatelessWidget {
  final bool active;
  final String text;
  final Function onTap;
  const PaymentsNavbarItem({
    Key key,
    this.active,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 50,
      child: ListTile(
        onTap: onTap,
        //tileColor: active ? Colors.green.withOpacity(.3) : null,
        title: CustomText(
          text: text,
          color: kprimaryPurple,
          size: active ? 23 : 18,
          weight: active ? FontWeight.bold : FontWeight.w500,
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  // name constructor that has a positional parameters with the text required
  // and the other parameters optional
  CustomText({@required this.text, this.size, this.color, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size ?? 16,
          color: color ?? Colors.black,
          fontWeight: weight ?? FontWeight.normal),
    );
  }
}
