import 'package:flutter_helper/core/app/shared_vars.dart';
import 'package:flutter_helper/core/presentation/ui_services/toast_manager/normal_toast_imp.dart';
import 'package:flutter_helper/core/presentation/ui_services/toast_manager/toast_repo.dart';
import 'package:flutter_helper/core/presentation/ui_services/toast_manager/tost_manager.dart';
import 'package:flutter_helper/core/presentation/ui_services/toast_manager/windows_toast_imp.dart';
import 'package:get_it/get_it.dart';
import 'dart:io' show Platform;



final getIt = GetIt.instance;


Future<void> _justMethods() async {
  // all methods u need to run it one time before main() start
  if(Platform.isWindows){
    ToastManager.init(WindowsToastImp(), navigatorKey);
  }else{
    ToastManager.init(ToastNormalImp(), navigatorKey);
  }
}

Future<void> initAppModule() async {
  // app module, its a module where we put all generic dependencies

  // random class
  await _justMethods();


  // // cubit manager
  // getIt
  //     .registerLazySingleton<AreaCubit>(() => AreaCubit(getIt<GraphQlSplashRepo>()));
  // getIt.registerLazySingleton<StoreCubit>(
  //     () => StoreCubit(getIt<GraphQlStoreRepo>()));
  // getIt.registerLazySingleton<ProductCubit>(
  //     () => ProductCubit(getIt<GraphQlStoreRepo>()));

  // uuid FirebaseMessaging
  // String? firebaseToken = await FirebaseMessaging.instance.getToken();
  // blocs
}
