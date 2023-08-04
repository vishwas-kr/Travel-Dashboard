import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';

Widget customTextField({
  required TextEditingController controller,
  required Icon prefixIcon,
  required String hintText,
  // required BuildContext context,
  dynamic validator,
}) {
  //double height = MediaQuery.of(context).size.height;
  return TextFormField(
    autofocus: false,
    controller: controller,
    validator: validator,
    cursorColor: AppColors.textColor1,
    style: const TextStyle(letterSpacing: 1, color: AppColors.textColor1),
    decoration: InputDecoration(
      isDense: true,
      filled: true,
      fillColor: AppColors.white,
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        borderSide: BorderSide.none,
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        borderSide: BorderSide.none,
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        borderSide: BorderSide.none,
      ),
      prefixIcon: prefixIcon,
      hintText: hintText,
      // contentPadding:
      //     height > 700 ? null : const EdgeInsets.symmetric(vertical: 10)
      //constraints: BoxConstraints(minHeight: 50, maxHeight: 50),
    ),
  );
}
