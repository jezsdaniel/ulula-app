import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ulula/core/constants/constants.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    super.key,
    this.labelText,
    this.prefix,
    this.suffix,
    this.validation,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.inputFormatters,
    this.focusNode,
    this.checkOfErrorOnFocusChange = false,
    this.autofocus = false,
    this.obscureText,
    this.textAlign,
    this.initialValue,
    this.enabled,
  });

  final String? labelText;
  final String Function(String)? validation;
  final Widget? prefix;
  final Widget? suffix;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final bool checkOfErrorOnFocusChange;
  final bool autofocus;
  final bool? obscureText;
  final TextAlign? textAlign;
  final String? initialValue;
  final bool? enabled;

  @override
  State<StatefulWidget> createState() {
    return _AppTextFormFieldState();
  }
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool isError = false;
  String errorString = '';

  Widget getBorder({required Widget child}) {
    if (widget.enabled == null || widget.enabled!) {
      return Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        height: 64,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(92)),
          border: Border.all(
            color: AppColors.color3,
          ),
        ),
        child: child,
      );
    } else {
      return SizedBox(
        height: 64,
        child: DottedBorder(
          dashPattern: const [5, 5],
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
          borderType: BorderType.RRect,
          radius: const Radius.circular(92),
          color: AppColors.color3,
          child: child,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FocusScope(
          child: Focus(
            onFocusChange: (focus) {
              setState(() {
                if (widget.validation != null) {
                  if (widget.checkOfErrorOnFocusChange &&
                      widget.validation!(widget.controller?.text ?? '')
                          .isNotEmpty) {
                    isError = true;
                    errorString =
                        widget.validation!(widget.controller?.text ?? '');
                  } else {
                    isError = false;
                    errorString =
                        widget.validation!(widget.controller?.text ?? '');
                  }
                }
              });
            },
            child: getBorder(
              child: Row(
                children: [
                  if (widget.prefix != null) widget.prefix!,
                  Expanded(
                    child: TextFormField(
                      initialValue: widget.initialValue,
                      enabled: widget.enabled,
                      focusNode: widget.focusNode,
                      controller: widget.controller,
                      style: AppTextStyles.regular16.copyWith(
                        color: AppColors.color4,
                      ),
                      obscureText: widget.obscureText ?? false,
                      autofocus: widget.autofocus,
                      keyboardType: widget.keyboardType,
                      textInputAction: widget.textInputAction,
                      inputFormatters: widget.inputFormatters,
                      textAlign: widget.textAlign ?? TextAlign.start,
                      validator: (string) {
                        if (widget.validation != null) {
                          if (widget.validation!(widget.controller?.text ?? '')
                              .isNotEmpty) {
                            setState(() {
                              isError = true;
                              errorString = widget
                                  .validation!(widget.controller?.text ?? '');
                            });
                            return '';
                          } else {
                            setState(() {
                              isError = false;
                              errorString = widget
                                  .validation!(widget.controller?.text ?? '');
                            });
                          }
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: widget.labelText,
                        labelStyle: AppTextStyles.regular16.copyWith(
                          color: AppColors.color3,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        border: InputBorder.none,
                        errorStyle: const TextStyle(height: 0),
                        focusedErrorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  if (widget.suffix != null) widget.suffix!,
                ],
              ),
            ),
          ),
        ),
        Visibility(
          visible: isError,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Text(
              errorString,
              style: AppTextStyles.regular12.copyWith(
                color: AppColors.color1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
