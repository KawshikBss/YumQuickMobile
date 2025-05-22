import 'package:yumquick/core/routes/app_route.dart';
import 'package:yumquick/features/launch/presentation/screens/launch_screen.dart';
import 'package:yumquick/features/launch/presentation/screens/welcome_screen.dart';

class AppRoutes {
  static final List<AppRoute> all = [
    AppRoute(
      name: 'First Screen',
      path: '/splash-screen',
      page: LaunchScreen(),
    ),
    AppRoute(
      name: 'Welcome Screen',
      path: '/',
      page: WelcomeScreen(),
    ),
  ];
}
