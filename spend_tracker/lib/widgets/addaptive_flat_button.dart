import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddaptiveFlatButton extends StatelessWidget {
  // const AddaptiveButton({ Key? key }) : super(key: key);
  final String text;
  final Function handler;

  AddaptiveFlatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ?
                    CupertinoButton(
                      child: Text(
                        text,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: handler,
                    )
                    :
                    FlatButton(
                      onPressed: handler,
                      child: Text(
                        text,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      textColor: Theme.of(context).primaryColor,
                    );
  }
}
