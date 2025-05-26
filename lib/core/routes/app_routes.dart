import 'package:yumquick/core/routes/app_route.dart';
import 'package:yumquick/features/all_foods/presentation/screens/all_foods_screen.dart';
import 'package:yumquick/features/auth/presentation/screens/login_screen.dart';
import 'package:yumquick/features/auth/presentation/screens/set_fingerprint_screen.dart';
import 'package:yumquick/features/auth/presentation/screens/set_password_screen.dart';
import 'package:yumquick/features/auth/presentation/screens/signup_screen.dart';
import 'package:yumquick/features/favorites/presentation/screens/favorites_screen.dart';
import 'package:yumquick/features/help/presentation/screens/help_screen.dart';
import 'package:yumquick/features/home/presentation/screens/home_screen.dart';
import 'package:yumquick/features/launch/presentation/screens/launch_screen.dart';
import 'package:yumquick/features/launch/presentation/screens/welcome_screen.dart';
import 'package:yumquick/features/main/presentation/screens/main_shell.dart';
import 'package:yumquick/features/on_boarding/presentation/screens/on_boarding_screen.dart';
import 'package:yumquick/features/orders/presentation/screens/orders_screen.dart';

class AppRoutes {
  static final List<AppRoute> all = [
    AppRoute(name: 'On Boarding Screen', path: '/', page: OnBoardingScreen()),
    AppRoute(
      name: 'First Screen',
      path: '/splash-screen',
      page: LaunchScreen(),
    ),
    AppRoute(name: 'Welcome Screen', path: '/welcome', page: WelcomeScreen()),
    AppRoute(name: 'Log In', path: '/login', page: LoginScreen()),
    AppRoute(name: 'Sign Up', path: '/signup', page: SignupScreen()),
    AppRoute(
      name: 'Set Password',
      path: '/set-password',
      page: SetPasswordScreen(),
    ),
    AppRoute(
      name: 'Set Fingerprint',
      path: '/set-fingerprint',
      page: SetFingerprintScreen(),
    ),
    AppRoute(
      name: 'Main',
      path: '/main',
      pageBuilder: (context, state, child) => MainShell(child: child),
      shellChildren: mainShellRoutes,
    ),
  ];

  static final List<AppRoute> mainShellRoutes = [
    AppRoute(
      name: 'Home',
      path: '/home',
      iconImage: 'assets/images/icons/home-icon.png',
      page: HomeScreen(),
    ),
    AppRoute(
      name: 'All Foods',
      path: '/foods/all',
      iconImage: 'assets/images/icons/all-foods-icon.png',
      page: AllFoodsScreen(),
    ),
    AppRoute(
      name: 'Favourites',
      path: '/favourites',
      iconImage: 'assets/images/icons/favorites-icon.png',
      page: FavoritesScreen(),
    ),
    AppRoute(
      name: 'Orders',
      path: '/orders/all',
      iconImage: 'assets/images/icons/order-icon.png',
      page: OrdersScreen(),
    ),
    AppRoute(
      name: 'Help',
      path: '/help',
      iconImage: 'assets/images/icons/help-icon.png',
      page: HelpScreen(),
    ),
  ];
}
