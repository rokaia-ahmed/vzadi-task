import 'package:flutter/material.dart';
import '../../../../core/utiles/app_colors.dart';
import '../../../../models/users_models.dart';

class CustomItemBuilder extends StatelessWidget {
  const CustomItemBuilder({super.key, this.model,});
  final UsersModel? model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: AppColors.primaryColor,
            child: Text('${model!.name!.firstname}'[0].toUpperCase()),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                  'name', '${model!.name!.firstname} ${model!.name!.lastname}'),
              customText('username', model!.username!),
              customText('email', model!.email!),
              customText('phone', model!.phone!),
              customText('address',
                  '${model!.address!.street},${model!.address!.city}'),
            ],
          ),
        ],
      ),
    );
  }
}

Widget customText(String title, String text) => Row(
      children: [
        Text('$title:',
          style: const TextStyle(
              color: Colors.indigoAccent,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 10),
        Text(text),
      ],
    );
