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
//
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
