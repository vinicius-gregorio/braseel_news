import 'package:braseel_noticias/app/theme/app_colors.dart';
import 'package:braseel_noticias/app/theme/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    Key? key,
    required this.options,
  }) : super(key: key);

  final List options;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      padding: EdgeInsets.only(top: 30),
      child: GridView.count(
        primary: false,
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        childAspectRatio: 1.5,
        crossAxisSpacing: 10,
        children: options
            .map((option) => GestureDetector(
                  onTap: () => Get.defaultDialog(
                      title: "DMConta",
                      middleText: "Botão pressionado: ${option.name}",
                      backgroundColor: Colors.white,
                      titleStyle: TextStyles.titleBlack,
                      middleTextStyle: TextStyles.descriptionBlack),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.blueCardBackground,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(option.image),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                        ),
                        Text(
                          option.name,
                          style: TextStyles.descriptionBlack,
                        )
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
