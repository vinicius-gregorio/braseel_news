import 'package:braseel_noticias/app/theme/app_colors.dart';
import 'package:braseel_noticias/app/theme/app_texts.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  const CustomTextField({
    Key? key,
    required this.label,
    required this.hint,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              label,
              style: TextStyles.inputLabel,
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    width: 1,
                    color: AppColors.shape,
                    style: BorderStyle.solid)),
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: hint,
                  contentPadding: EdgeInsets.all(15),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
