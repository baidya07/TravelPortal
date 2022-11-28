// import 'package:flutter/material.dart';
//
// mixin RouteNavigationMixin {
//   /// navigate to login screen
//   void goToRegisterIntroScreen(BuildContext context) {
//     Navigator.pushNamed(context, RegisterIntroScreen.route);
//   }
//
//   void goToRegisterLoginScreen(
//       BuildContext context, LoginRegisterScreenArgs loginRegisterScreenArgs) {
//       Navigator.pushNamed(context, LoginRegisterScreen.route,
//           arguments: loginRegisterScreenArgs);
//   }
//
//   //on product item click
//   void onProductClick(BuildContext context, String slug) {
//     Navigator.pushNamed(context, ProductDetailScreen.route, arguments: slug);
//   }
//
//   void goToAddressPage(BuildContext context) {
//     Navigator.pushNamed(context, AddShippingAddress.route);
//   }
//
//   //on product item click
//   void onSearchbarClick(BuildContext context) {
//     Navigator.pushNamed(context, SearchProductPage.route);
//   }
//
//   void onShopItemClick(BuildContext context, ShopInfoModel shopInfo) {
//     if (shopInfo != null)
//       Navigator.pushNamed(context, ShopProfilePage.route, arguments: shopInfo);
//   }
//
//   void goToBuyNowPage(BuildContext context, BuyNowPageArgs args) {
//     if (args.product != null && args.product.productVariant != null) {
//       Navigator.pushNamed(context, BuyNowPage.route, arguments: args);
//     } else {
//       customErrorFlushBar(context, 'Variant not found for this product');
//     }
//   }
//
//   void goToProductListingPage(
//       BuildContext context, FilterQueryParams filterQueryParams) {
//     Navigator.pushNamed(context, ProductListingScreen.route,
//         arguments: filterQueryParams);
//   }
//
//   void goToCmsPage(BuildContext context, String url) {
//     Navigator.pushNamed(context, CMSPage.route, arguments: url);
//   }
//
//   void goToShopLandingPage(BuildContext context, ShopInfoModel shopInfoModel) {
//     Navigator.pushNamed(context, ShopProfilePage.route,
//         arguments: shopInfoModel);
//   }
// }
