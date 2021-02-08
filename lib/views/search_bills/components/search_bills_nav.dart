import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:traders_billing/constants.dart';
import 'package:traders_billing/helpers/enumerators.dart';
import 'package:traders_billing/loacator.dart';
import 'package:traders_billing/provider/app_provider.dart';
import 'package:traders_billing/routing/route_names.dart';
import 'package:traders_billing/services/navigation_service.dart';
import 'package:traders_billing/widgets/navigation_bar/sub_navbar_item.dart';

class SearchBillsNav extends StatelessWidget {
  const SearchBillsNav({Key key}) : super(key: key);

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
              child: SubNavbarItem(
                  text: 'Farmer',
                  active: appProvider.currentPage == DisplayedPage.SEARCHFARMER,
                  onTap: () {
                    appProvider.changeCurrentPage(DisplayedPage.SEARCHFARMER);
                    locator<NavigationService>().navigateTo(SearchBillsRoute);
                  }),
            ),
            Expanded(
              flex: 20,
              child: SubNavbarItem(
                  text: 'Buyer',
                  active: appProvider.currentPage == DisplayedPage.SEARCHBUYER,
                  onTap: () {
                    appProvider.changeCurrentPage(DisplayedPage.SEARCHBUYER);
                    locator<NavigationService>().navigateTo(SearchBillBuyer);
                  }),
            ),
            Expanded(
              flex: 20,
              child: SubNavbarItem(
                  text: 'Gang',
                  active: appProvider.currentPage == DisplayedPage.SEARCHGANG,
                  onTap: () {
                    appProvider.changeCurrentPage(DisplayedPage.SEARCHGANG);
                    locator<NavigationService>().navigateTo(SearchBillGang);
                  }),
            ),
          ],
        ));
  }
}
