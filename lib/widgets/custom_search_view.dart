import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomSearchView extends StatelessWidget {
  CustomSearchView(
      {Key? key,
      this.alignment,
      this.width,
      this.boxDecoration,
      this.scrollPadding,
      this.controller,
      this.focusNode,
      this.autofocus = false,
      this.textStyle,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.hintStyle,
      this.prefix,
      this.prefixConstraint,
      this.suffix,
      this.suffixContraints,
      this.contentPadding,
      this.borderDecoration,
      this.fillColor,
      this.filled = true,
      this.validator,
      this.onChanged})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final BoxDecoration? boxDecoration;

  final TextEditingController? scrollPadding;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraint;

  final Widget? suffix;

  final BoxConstraints? suffixContraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: searchViewWidget(context))
        : searchViewWidget(context);
  }

  Widget searchViewWidget(BuildContext context) => Container(
        width: width ?? double.maxFinite,
        decoration: boxDecoration,
        child: TextFormField(
          scrollPadding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          controller: controller,
          focusNode: focusNode,
          onTapOutside: (event) {
            if (focusNode != null) {
              focusNode?.unfocus();
            } else {
              FocusManager.instance.primaryFocus?.unfocus();
            }
          },
          autofocus: autofocus!,
          style: textStyle ?? theme.textTheme.bodyLarge,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
          onChanged: (String value) {
            onChanged?.call(value);
          },
        ),
      );
  InputDecoration get decoration => InputDecoration(
    hintText: hintText ?? "",
    hintStyle: hintStyle ?? theme.textTheme.bodyLarge,
    prefixIcon: prefix ??
        Container(
          margin: EdgeInsets.fromLTRB(24.h, 14.h, 18.h, 14.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgBack,
            height: 22.h,
            width: 24.h,
          ),
        ),
    prefixIconConstraints: prefixConstraint ?? 
        BoxConstraints(
          maxHeight: 54.h,
        ),
    suffixIcon: suffix ??
        Container(
          padding: EdgeInsets.fromLTRB(6.h, 8.h, 8.h, 8.h),
          margin: EdgeInsets.fromLTRB(16.h, 14.h, 18.h, 14.h),
          decoration: BoxDecoration(
            color: theme.colorScheme.secondaryContainer.withOpacity(1),
            borderRadius: BorderRadius.circular(20.h),
            border: Border.all(
              color: theme.colorScheme.secondaryContainer.withOpacity(1),
              width: 1.h,
            ),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.secondaryContainer,
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  10,
                  9,
                ),
              )
            ],
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgAddname,
            height: 22.h,
            width: 24.h,
          ),
        ),
      suffixIconConstraints: suffixContraints ?? 
        BoxConstraints(
          maxHeight: 54.h,
        ),
      isDense: true,
      contentPadding: contentPadding ?? EdgeInsets.all(14.h),
      fillColor: fillColor ?? appTheme.gray900,
      filled: filled,
      border: borderDecoration ??
          OutlineInputBorder(
            borderRadius: BorderRadius.circular(26.h),
            borderSide: BorderSide(
              color: appTheme.blueGray80001,
              width: 4,
            ),
          ),
      enabledBorder: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(26.h),
          borderSide: BorderSide(
            color: appTheme.blueGray80001,
            width: 4,
          ),
        ),
      focusedBorder: (borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(26.h),
            ))
          .copyWith(
        borderSide: BorderSide(
            color: theme.colorScheme.primary,
            width: 1,
          ),
        ),
      );

}
