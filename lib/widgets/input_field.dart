import 'package:flutter/material.dart';
import 'package:learning_flutter/res/res.dart';

class InputField extends StatelessWidget {
  const InputField({
    this.controller,
    required this.label,
    this.hint,
    super.key,
  });

  final TextEditingController? controller;
  final String label;
  final String? hint;

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
      ),
    );
}
