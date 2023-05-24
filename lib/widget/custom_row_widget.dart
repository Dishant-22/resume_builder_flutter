import 'package:flutter/material.dart';

class CustomRowButton extends StatelessWidget {
  final String? title;
  final void Function()? onPressed;

  const CustomRowButton({Key? key, this.title, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ?? "Test",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          icon: Icon(Icons.add),
        )
      ],
    );
  }
}
