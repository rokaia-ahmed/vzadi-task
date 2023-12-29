
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:vazadi_task/views/screens/users/cubit/users_cubit.dart';
import 'package:vazadi_task/views/screens/users/cubit/users_states.dart';
import '../../../../core/utiles/app_colors.dart';
import '../widgets/custom_item_builder.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text('users'),
      ),
      body: BlocConsumer<UsersCubit,UsersStates>(
        bloc: GetIt.I<UsersCubit>()..getUsers(),
        listener: (context, state) {},
        builder: (context, state) {
          return (state is GetUsersLoadingStates)?
           const Center(child: CircularProgressIndicator())  :
           ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) =>
              (GetIt.I<UsersCubit>().users.isNotEmpty)?
                CustomItemBuilder(model:GetIt.I<UsersCubit>().users[index] ,):
                const Center(child: Text('list of users is empty')) ,
              separatorBuilder: (context, index) =>
              const SizedBox(height: 10),
              itemCount: 10
          );
        },
      ),
    );
  }
}
