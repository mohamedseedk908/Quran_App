import 'package:go_router/go_router.dart';
import 'package:quran_app/features/starting_page/presentation/views/starting_screen.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => StartingScreen(),
  ),
]);
