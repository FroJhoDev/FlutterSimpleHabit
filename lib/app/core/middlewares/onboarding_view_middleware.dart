import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';

class OnboardingViewMiddleware extends GetMiddleware {

  final GetStorage _getStorage = GetStorage();

  @override
  RouteSettings? redirect(String? route) {
    if(_getStorage.read('skipOnboard') != null) return const RouteSettings(name: '/auth');

    return null;
  }

}