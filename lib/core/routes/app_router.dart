import 'package:go_router/go_router.dart';
import 'package:quran_app/features/innerpage/presentation/views/Inner_page.dart';
import 'package:quran_app/features/sgnin/presentation/views/sign_in_screen.dart';
import 'package:quran_app/features/starting_page/presentation/views/starting_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => StartingScreen(),
    ),
    GoRoute(
      path: "/signIn",
      builder: (context, state) => SignInScreen(),
    ),
    GoRoute(
      path: "/innerPage",
      builder: (context, state) => InnerPage(),
    ),
  ],
);
