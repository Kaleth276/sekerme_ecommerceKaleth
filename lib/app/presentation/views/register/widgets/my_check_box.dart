import 'package:flutter/material.dart';

class MyCheckBox extends StatelessWidget {

  final Function(bool?)? onChanged;
  final bool value;

  const MyCheckBox({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
        ),
        const Text('Acepto los'),
        InkWell(
            child: Text(' Terminos',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            onTap: () {}
        ),
        const Text(' y'),
        InkWell(
            child: Text(' Condiciones',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            onTap: () {}
        ),
      ],
    );
  }
}