import 'package:car_rental_for_customer/app/route/observers.dart';
import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/pages/activity/activity.dart';
import 'package:car_rental_for_customer/pages/car_detail/car_detail.dart';
import 'package:car_rental_for_customer/pages/car_search/car_search.dart';
import 'package:car_rental_for_customer/pages/home/home.dart';
import 'package:car_rental_for_customer/pages/login/login.dart';
import 'package:car_rental_for_customer/pages/notification/notification.dart';
import 'package:car_rental_for_customer/pages/profile/profile.dart';
import 'package:car_rental_for_customer/pages/profile_detail/profile_detail.dart';
import 'package:car_rental_for_customer/pages/scaffold_with_nav_bar/scaffold_with_nav_bar.dart';
import 'package:car_rental_for_customer/pages/sign_up/sign_up.dart';
import 'package:car_rental_for_customer/pages/splash/splash_page.dart';
import 'package:car_rental_for_customer/pages/wallet/wallet.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');
  final GlobalKey<NavigatorState> shellNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'shell');

  final ValueKey<String> _shellNavigationKey =
      const ValueKey<String>('Shell Navigator Key');
  late final router = GoRouter(
    navigatorKey: rootNavigatorKey,
    routes: [
      GoRoute(
        path: '/splash',
        name: RouteName.splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: '/login',
        name: RouteName.login,
        builder: (context, state) => const LoginPage(),
        routes: [
          GoRoute(
            path: 'sign-up',
            name: RouteName.signUp,
            builder: (context, state) => const SignUpPage(),
          ),
        ],
      ),
      ShellRoute(
        navigatorKey: shellNavigatorKey,
        builder: (context, state, child) => ScaffoldWithNavBar(child: child),
        routes: [
          GoRoute(
            path: '/home',
            name: RouteName.home,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: const HomePage(),
            ),
            routes: [
              GoRoute(
                path: 'car-search',
                name: RouteName.carSearch,
                builder: (context, state) => CarSearchPage(
                  rentalCarType: RentalCarType.values.firstWhere(
                    (element) =>
                        element.toString() ==
                        state.queryParams['rental-car-type'],
                    orElse: () => RentalCarType.selfDrivingCar,
                  ),
                  location: state.queryParams['location'],
                ),
              ),
            ],
          ),
          GoRoute(
            path: '/profile',
            name: RouteName.profile,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: const ProfilePage(),
            ),
            routes: [
              GoRoute(
                path: 'profile-detail',
                parentNavigatorKey: rootNavigatorKey,
                name: RouteName.profileDetail,
                builder: (context, state) => const ProfileDetailPage(),
              ),
            ],
          ),
          GoRoute(
            path: '/wallet',
            name: RouteName.wallet,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: const WalletPage(),
            ),
          ),
          GoRoute(
            path: '/notification',
            name: RouteName.notification,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: const NotificationPage(),
            ),
          ),
          GoRoute(
            path: '/activity',
            name: RouteName.activity,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: const ActivityPage(),
            ),
          ),
        ],
      ),
      GoRoute(
        path: '/car-detail',
        name: RouteName.carDetail,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) => const CarDetailPage(),
      ),
    ],
    initialLocation: '/splash',
    observers: [NavObserver()],
    debugLogDiagnostics: true,
  );
}

class FadeTransitionPage extends CustomTransitionPage<void> {
  /// Creates a [FadeTransitionPage].
  FadeTransitionPage({
    required LocalKey key,
    required Widget child,
  }) : super(
            key: key,
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation.drive(_curveTween),
                  child: child,
                ),
            child: child);

  static final CurveTween _curveTween = CurveTween(curve: Curves.easeIn);
}
