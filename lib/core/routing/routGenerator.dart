// import 'package:ecommerce_app/core/routes/routes.dart';
// import 'package:ecommerce_app/core/widget/homeScreen.dart';
// import 'package:ecommerce_app/feature/view/presentation/signin.dart';
// import 'package:ecommerce_app/feature/view/presentation/signup.dart';
// import 'package:ecommerce_app/feature/view/tabs/cart/cart_screen.dart';

// import 'package:ecommerce_app/feature/view/tabs/products/presentation/screens/product_details.dart';
// import 'package:ecommerce_app/feature/view/tabs/products/presentation/screens/products_screen.dart';
// import 'package:flutter/material.dart';

// class RouteGenerator {
//   static Route<dynamic> getRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case Routes.register:
//         return MaterialPageRoute(
//           builder: (_) => const Signup(),
//           settings: settings,
//         );
//       case Routes.login:
//         return MaterialPageRoute(
//           builder: (_) => const Login(),
//           settings: settings,
//         );
//       case Routes.home:
//         return MaterialPageRoute(
//           builder: (_) => const HomeScreen(),
//           settings: settings,
//         );
//       case Routes.products:
//         return MaterialPageRoute(
//           builder: (_) => const ProductsScreen(),
//           settings: settings,
//         );
//       case Routes.productDetails:
//         return MaterialPageRoute(
//           builder: (_) => const ProductDetails(),
//           settings: settings,
//         );
//       case Routes.cart:
//         return MaterialPageRoute(
//           builder: (_) => const CartScreen(),
//           settings: settings,
//         );
//       default:
//         return _undefinedRoute();
//     }
//   }

//   static Route<dynamic> _undefinedRoute() {
//     return MaterialPageRoute(
//       builder:
//           (_) => Scaffold(
//             appBar: AppBar(title: const Text('No Route Found')),
//             body: const Center(child: Text('No Route Found')),
//           ),
//     );
//   }
// }
