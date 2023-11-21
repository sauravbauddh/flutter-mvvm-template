import 'package:flutter/material.dart';
import 'package:mvvm/res/colors.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onPress;

  const RoundButton(
      {super.key,
      required this.title,
      required this.loading,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 40,
        width: 200,
        child: Center(
          child: loading
              ? const CircleAvatar()
              : Text(
                  title,
                  style: const TextStyle(
                    color: AppColors.whiteColor,
                  ),
                ),
        ),
      ),
    );
  }
}
