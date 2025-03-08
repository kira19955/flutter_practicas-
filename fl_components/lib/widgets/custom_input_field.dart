import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? sufsuffixIcon;


  const CustomInputField({
    super.key, this.hintText, this.labelText, this.helperText, this.icon, this.sufsuffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
      
      },
      validator: (value) {
        if (value == null) return 'esta campo es requerido';
        return value.length < 3 ? 'minimo 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText, 
        suffixIcon: sufsuffixIcon == null ? null : Icon(sufsuffixIcon),
        icon: icon ==null ? null : Icon(icon),
      ),
    
    
    );
  }
}