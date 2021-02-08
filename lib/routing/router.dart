import 'package:flutter/material.dart';
import 'package:traders_billing/main.dart';
import 'package:traders_billing/routing/route_names.dart';
import 'package:traders_billing/views/arrivals/arrivalsView.dart';
import 'package:traders_billing/views/home/available_storage_view.dart';
import 'package:traders_billing/views/home/home_page.dart';
import 'package:traders_billing/views/home/sales_details_view.dart';
import 'package:traders_billing/views/ledger/ledger_view.dart';
import 'package:traders_billing/views/login/loginView.dart';
import 'package:traders_billing/views/payments/payments_debit.dart';
import 'package:traders_billing/views/payments/payments_view.dart';
import 'package:traders_billing/views/pesticide/pesticide_view.dart';
import 'package:traders_billing/views/profile/profileView.dart';
import 'package:traders_billing/views/profile/profile_buyer_view.dart';
import 'package:traders_billing/views/profile/profile_gang_view.dart';
import 'package:traders_billing/views/sales/sales_view.dart';
import 'package:traders_billing/views/search_bills/components/search_bills_gang_view.dart';
import 'package:traders_billing/views/search_bills/search_bills_buyer_view.dart';
import 'package:traders_billing/views/search_bills/search_bills_view.dart';
import 'package:traders_billing/views/user_profile/UserProfileView.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  //print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomePageDesktop());
    case LoginRoute:
      return _getPageRoute(LoginView());
    case ArrivalsRoute:
      return _getPageRoute(ArrivalsView());
    case ProfileRoute:
      return _getPageRoute(Profileview());
    case SalesRoute:
      return _getPageRoute(SaleView());
    case SearchBillsRoute:
      return _getPageRoute(SearchBillsView());
    case PaymentsRoute:
      return _getPageRoute(PaymentsView());
    case LedgerRoute:
      return _getPageRoute(LedgerView());
    case PesticideRoute:
      return _getPageRoute(PesticideView());

    //Homepage navbar routes
    case PaymentSummaryRoute:
      return _getPageRoute(HomePageDesktop());
    case AvailableStorageRoute:
      return _getPageRoute(AvailableStorageView());
    case SalesDetailsRoute:
      return _getPageRoute(SalesDetailsView());

    //Profile-navbar routes
    case ProfileBuyer:
      return _getPageRoute(ProfileBuyerView());
    case ProfileGang:
      return _getPageRoute(ProfileGangView());

    //payments-navbar routes
    case PaymentsCredit:
      return _getPageRoute(PaymentsView());
    case PaymentsDebit:
      return _getPageRoute(PaymentsDebitView());

    //Search Bills routes
    case SearchBillBuyer:
      return _getPageRoute(SearchBillsBuyerView());
    case SearchBillGang:
      return _getPageRoute(SearchBillsGangView());

    //Top-navbar routes
    case ProfileRoute:
      return _getPageRoute(UserProfileView());
    //case SettingRoute:
    //return _getPageRoute();
    case LogoutRoute:
      return _getPageRoute(LoginView());
    case PageControllerRoute:
      return _getPageRoute(AppPagesController());
    default:
      return _getPageRoute(LoginView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}
