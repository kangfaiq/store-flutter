import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_store/pages/cart_page.dart';
import 'package:shamo_store/pages/checkout_page.dart';
import 'package:shamo_store/pages/checkout_success_page.dart';
import 'package:shamo_store/pages/detail_chat_page.dart';
import 'package:shamo_store/pages/edit_profile_page.dart';
import 'package:shamo_store/pages/home/main_page.dart';
import 'package:shamo_store/pages/sign_in_page.dart';
import 'package:shamo_store/pages/sign_up_page.dart';
import 'package:shamo_store/pages/splash_page.dart';
import 'package:shamo_store/providers/auth_provider.dart';
import 'package:shamo_store/providers/cart_provider.dart';
import 'package:shamo_store/providers/product_provider.dart';
import 'package:shamo_store/providers/transaction_provider.dart';
import 'package:shamo_store/providers/wishlist_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WishlistProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TransactionProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}
