import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:mvvm/res/Color/app_colors.dart';

class RoundButton extends StatelessWidget {
  RoundButton(
      {this.buttoncolor = AppColor.greenColor,
      this.textcolor = AppColor.whiteColor,
      required this.title,
      required this.onPres,
      this.width = 60,
      this.height = 50,
      this.loading = false,
      super.key});
  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onPres;
  final Color textcolor, buttoncolor;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttoncolor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: loading
            ? const Center(child: CircularProgressIndicator())
            : Center(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ));
  }
}