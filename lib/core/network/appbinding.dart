
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../helper/bloc_observer.dart';
import 'dependancy_injection.dart' as id;
import 'dio_helper.dart';


class AppBinding {
  static Future initAsyncDependencies() async {
    WidgetsFlutterBinding.ensureInitialized();
    await id.init();
    await DioHelper.init();
    Bloc.observer =  MyBlocObserver();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
    );
  }
}
