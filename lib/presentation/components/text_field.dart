import 'package:flutter/cupertino.dart';

class AppinioTextField extends StatelessWidget {
  final bool autocorrect;
  final String? placeholder;
  final TextInputType? keyboardType;
  final Iterable<String>? autofillHints;
  final void Function(String)? onChanged;
  final TextCapitalization textCapitalization;

  const AppinioTextField({
    super.key,
    this.onChanged,
    this.placeholder,
    this.keyboardType,
    this.autofillHints,
    this.autocorrect = true,
    this.textCapitalization = TextCapitalization.none,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      autocorrect: autocorrect,
      onChanged: onChanged,
      placeholder: placeholder,
      keyboardType: keyboardType,
      autofillHints: autofillHints,
      textCapitalization: textCapitalization,
    );
  }
}
