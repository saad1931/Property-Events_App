import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintTextt;
  final String labelTextt;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final Icon preIcon;
  const TextFieldWidget(
      {super.key,
      required this.preIcon,
      required this.labelTextt,
      required this.textEditingController,
      this.isPass = false,
      required this.hintTextt,
      required this.textInputType,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextFormField(
        controller: textEditingController,
        keyboardType: textInputType,
        obscureText: isPass,
        validator: validator,
        decoration: InputDecoration(
          border:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:const BorderSide(
              color: Colors.black
            )
          ),
          prefixIcon:preIcon,
          hintText: hintTextt,
          labelText: labelTextt,
        ),
      ),
    );
  }
}
