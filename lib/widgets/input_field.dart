import 'package:flutter/material.dart';
import 'package:learning_flutter/res/res.dart';
import 'package:learning_flutter/utils/utils.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    this.controller,
    required this.label,
    this.hint,
    this.validator,
  });

  final TextEditingController? controller;
  final String label;
  final String? hint;
  final AppValidator? validator;

  @override
  Widget build(BuildContext context) => Padding(
        padding: Dimens.edgeInsets8,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimens.twelve),
            ),
            labelText: label,
            hintText: hint ?? label,
          ),
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
      );
}
