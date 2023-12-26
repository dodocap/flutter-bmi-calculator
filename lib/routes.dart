import 'package:go_router/go_router.dart';
import 'package:orm_bmi_calculator/main/main_screen.dart';
import 'package:orm_bmi_calculator/result/result_screen.dart';

final routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const MainScreen();
      },
    ),
    GoRoute(
      path: '/result',
      builder: (context, state) {
        String height = state.uri.queryParameters['height']!;
        String weight = state.uri.queryParameters['weight']!;
        return ResultScreen(height: double.parse(height), weight: double.parse(weight));
      },
    )
  ]
);