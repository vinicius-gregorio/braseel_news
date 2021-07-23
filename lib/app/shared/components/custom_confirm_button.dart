import 'package:braseel_noticias/app/theme/app_colors.dart';
import 'package:braseel_noticias/app/theme/app_texts.dart';
import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const ConfirmButton({required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.primary, borderRadius: BorderRadius.circular(20)),
        alignment: Alignment.center,
        width: double.infinity,
        height: 60,
        child: Text(
          title,
          style: TextStyles.buttonTextWhite,
        ),
      ),
    );
  }
}
