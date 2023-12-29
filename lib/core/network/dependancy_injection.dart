
import 'package:get_it/get_it.dart';
import 'package:vazadi_task/views/screens/layout/cubit/layout_cubit.dart';
import 'package:vazadi_task/views/screens/users/cubit/users_cubit.dart';
Future<void> init() async {
  GetIt.instance.registerLazySingleton<LayoutCubit>(()=>LayoutCubit());
  GetIt.instance.registerLazySingleton<UsersCubit>(()=>UsersCubit());
 /* GetIt.instance.registerSingleton<ProfileCubit>(ProfileCubit());
  GetIt.instance.registerSingleton<HomeCubit>(HomeCubit());*/

}
