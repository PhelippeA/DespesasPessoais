import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  AdaptativeButton({
    this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final contextTheme = Theme.of(context);

    return Platform.isIOS
        ? CupertinoButton(
            child: Text(label),
            onPressed: onPressed,
            color: contextTheme.primaryColor,
            padding: EdgeInsets.symmetric(),
          )
        : RaisedButton(
            color: contextTheme.primaryColor,
            textColor: contextTheme.textTheme.button.color,
            child: Text(label),
            onPressed: onPressed,
          );
  }
}
