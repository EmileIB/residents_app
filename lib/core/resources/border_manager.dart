import 'package:flutter/material.dart'; 
import 'resources.dart';

class BorderManager {
  static InputBorder textFieldInputBorder = OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadiusManager.radiusAll20);
  static InputDecoration textFormFieldDecoration(hintText) {
    return InputDecoration(
        hintStyle: buttonText(
            color: ColorManager.white,
            fontSize: FontSizesManager.s14,
            fontWeight: FontWeightManager.medium),
        hintText: hintText,
        filled: true,
        fillColor: ColorManager.white,
        border: InputBorder.none,
        focusedErrorBorder: BorderManager.textFieldInputBorder,
        errorBorder: BorderManager.textFieldInputBorder,
        enabledBorder: BorderManager.textFieldInputBorder,
        focusedBorder: BorderManager.textFieldInputBorder,
        disabledBorder: BorderManager.textFieldInputBorder,
        contentPadding: PaddingManager.paddingAll20);
  }
}
