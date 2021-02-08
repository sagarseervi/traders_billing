import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:traders_billing/constants.dart';
import 'package:traders_billing/helpers/enumerators.dart';
import 'package:traders_billing/loacator.dart';
import 'package:traders_billing/provider/app_provider.dart';
import 'package:traders_billing/routing/route_names.dart';
import 'package:traders_billing/services/navigation_service.dart';
import 'package:traders_billing/widgets/navigation_bar/navbar_logo.dart';

class SideNavigationBar extends StatelessWidget {
  const SideNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = Provider.of<AppProvider>(context);
    Size size = MediaQuery.of(context).size;
    return Container(
        alignment: Alignment.topLeft,
        width: 300,
        height: size.height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            NavbarLogo(),
            SideNavbarItem(
              icon: Icons.dashboard,
              text: 'Dashboard',
              active: appProvider.currentPage == DisplayedPage.DASHBOARD,
              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.DASHBOARD);
                locator<NavigationService>().navigateTo(HomeRoute);
              },
            ),
            SideNavbarItem(
              icon: Icons.delivery_dining,
              text: 'Arrivals',
              active: appProvider.currentPage == DisplayedPage.ARRVIALS,
              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.ARRVIALS);
                locator<NavigationService>().navigateTo(ArrivalsRoute);
              },
            ),
            SideNavbarItem(
              icon: Icons.transform_outlined,
              text: 'Sales',
              active: appProvider.currentPage == DisplayedPage.SALES,
              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.SALES);
                locator<NavigationService>().navigateTo(SalesRoute);
              },
            ),
            SideNavbarItem(
              icon: Icons.notes,
              text: 'Search Bills',
              active: appProvider.currentPage == DisplayedPage.SEARCHBILLS,
              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.SEARCHBILLS);
                locator<NavigationService>().navigateTo(SearchBillsRoute);
              },
            ),
            SideNavbarItem(
              icon: Icons.people,
              text: 'Profile',
              active: appProvider.currentPage == DisplayedPage.PROFILE,
              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.PROFILE);
                locator<NavigationService>().navigateTo(ProfileRoute);
              },
            ),
            SideNavbarItem(
              icon: Icons.payment,
              text: 'Payments',
              active: appProvider.currentPage == DisplayedPage.PAYMENTS,
              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.PAYMENTS);
                locator<NavigationService>().navigateTo(PaymentsRoute);
              },
            ),
            SideNavbarItem(
              icon: Icons.note,
              text: 'Ledger',
              active: appProvider.currentPage == DisplayedPage.LEDGER,
              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.LEDGER);
                locator<NavigationService>().navigateTo(LedgerRoute);
              },
            ),
            SideNavbarItem(
              icon: Icons.ad_units,
              text: 'Pesticide Distribution',
              active: appProvider.currentPage == DisplayedPage.PESTICIDE,
              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.PESTICIDE);
                locator<NavigationService>().navigateTo(PesticideRoute);
              },
            ),
          ],
        ));
  }
}

class SideNavbarItem extends StatelessWidget {
  final bool active;
  final String text;
  final Function onTap;
  final IconData icon;

  const SideNavbarItem({Key key, this.active, this.text, this.onTap, this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      //tileColor: active ? Colors.green.withOpacity(.3) : null,
      leading: Icon(icon, color: kprimaryPurple),
      title: CustomText(
        text: text,
        color: kprimaryPurple,
        size: active ? 18 : 16,
        weight: active ? FontWeight.bold : FontWeight.w500,
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
