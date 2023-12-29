import 'package:flutter/material.dart';
import 'package:vazadi_task/core/utiles/app_colors.dart';
import 'package:vazadi_task/core/utiles/app_size.dart';
import '../../core/utiles/app_radius.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, this.hintText,
    this.prefixIcon,});
  final String? hintText ;
  final Widget? prefixIcon ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.08,
      child: TextFormField(
        decoration :InputDecoration(
          filled: true,
          hintStyle: const TextStyle(
            color: AppColors.textProfileColor,
          ),
          border: OutlineInputBorder(
            borderRadius: AppRadius.radius12,
            borderSide: BorderSide.none,
          ),
          hintText: hintText,
          prefixIcon: prefixIcon,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
