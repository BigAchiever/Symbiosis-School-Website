import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Page<dynamic> getPageBuilder(Widget child,
    {String? transition, Duration? duration}) {
  switch (transition) {
    case 'fade':
      return CustomTransitionPage<void>(
        child: child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
        transitionDuration: duration ?? const Duration(milliseconds: 300),
      );
    case 'slide':
      return CustomTransitionPage<void>(
        child: child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        },
        transitionDuration: duration ?? const Duration(milliseconds: 300),
      );
    default:
      return NoTransitionPage(child: child);
  }
}
