import 'package:yumquick/core/routes/app_route.dart';
import 'package:yumquick/features/auth/presentation/pages/login_screen.dart';
import 'package:yumquick/features/auth/presentation/pages/set_fingerprint_screen.dart';
import 'package:yumquick/features/auth/presentation/pages/set_password_screen.dart';
import 'package:yumquick/features/auth/presentation/pages/signup_screen.dart';
import 'package:yumquick/features/launch/presentation/screens/launch_screen.dart';
import 'package:yumquick/features/launch/presentation/screens/welcome_screen.dart';
import 'package:yumquick/features/on_boarding/presentation/screens/on_boarding_screen.dart';

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
  ];
}
