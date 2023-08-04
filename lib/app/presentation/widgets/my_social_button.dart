import 'package:flutter/material.dart';
class MySocialButton extends StatelessWidget {

  final Function()? OnTap;
  final String imagePath;

  const MySocialButton({
    super.key,
    required this.OnTap,
    required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap:OnTap,
        child:  Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration:   BoxDecoration(
              border: Border.all(
                color: Colors.grey
              ),
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Image.asset(imagePath,
            width: 30,
            height: 30,),
          ),

        ),
      ),

    );
  }
}
