import 'package:braseel_noticias/app/theme/app_colors.dart';
import 'package:braseel_noticias/app/theme/app_images.dart';
import 'package:braseel_noticias/app/theme/app_texts.dart';
import 'package:flutter/material.dart';

class CustomPasswordTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final bool? obscureText;
  final VoidCallback? onTapOnEye;
  CustomPasswordTextField({
    Key? key,
    required this.label,
    required this.hint,
    required this.controller,
    this.onTapOnEye,
    this.obscureText,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 250,
                  child: TextFormField(
                    controller: controller,
                    obscureText: obscureText != null ? obscureText! : false,
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
                Expanded(
                  child: Container(),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: onTapOnEye,
                    child: Container(
                      width: 25,
                      height: 25,
                      child: obscureText == true
                          ? Image.asset(AppImages.olhoAberto)
                          : Image.asset(AppImages.olhoFechado),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
