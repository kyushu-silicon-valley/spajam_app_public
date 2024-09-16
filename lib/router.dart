import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'pages/admin/admin_page.dart';
import 'pages/auth/auth_page.dart';
import 'pages/debug/debug_page.dart';
import 'pages/license/app_license_page.dart';
import 'pages/talk/talk_page.dart';
import 'pages/talk_list/talk_list_page.dart';
import 'providers/current_session_provider.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
    final userSession = ref.watch(currentSessionProvider);
    return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/debug',
          name: '/debug',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const DebugPage(),
            );
          },
        ),
        GoRoute(
          path: '/',
          name: '/',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const TalkListPage(),
            );
          },
        ),
        GoRoute(
          path: '/admin',
          name: '/admin',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const AdminPage(),
            );
          },
        ),
        GoRoute(
          path: '/auth',
          name: '/auth',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const AuthPage(),
            );
          },
        ),
        GoRoute(
          path: '/talk/:id/:name',
          name: '/talk/:id/:name',
          pageBuilder: (context, state) {
            final id = state.pathParameters['id'];
            final name = state.pathParameters['name'];
            if (id == null) {
              throw Exception('id is required');
            }
            return MaterialPage(
              key: state.pageKey,
              child: TalkPage(id, name: name ?? ''),
            );
          },
        ),
        GoRoute(
          path: '/license',
          name: '/license',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const AppLicensePage(),
            );
          },
        ),
      ],
      redirect: (context, state) {
        if (userSession == null) {
          return '/auth';
        }
        return null;
      },
      errorPageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: Scaffold(
          body: Center(
            child: Text(
              state.error.toString(),
            ),
          ),
        ),
      ),
    );
  },
);
