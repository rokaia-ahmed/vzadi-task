import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vazadi_task/core/network/dio_helper.dart';
import 'package:vazadi_task/core/network/end_points.dart';
import '../../../../models/users_models.dart';
import 'users_states.dart';

class UsersCubit extends Cubit<UsersStates>{
  UsersCubit():super(InitUsersStates());
  List<UsersModel> users = [];
 void getUsers()async{
   emit(GetUsersLoadingStates());
   try{
  final result = await DioHelper.getData(url:EndPoints.users,);
  users= List<Map<String,dynamic>>.from(result.data).map((element) =>
        UsersModel.fromJson(element)).toList();
  emit(GetUsersSuccessStates());
   }catch(e){
     emit(GetUsersErrorStates());
     debugPrint('error when get users $e');
   }
 }
}