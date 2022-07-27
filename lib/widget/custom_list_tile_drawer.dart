// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class CustomListTileDrawer extends StatelessWidget {
  final IconData CustomLeading;
  final String CustomText;
  final IconData CustomTrailing;
  final String MyRouteName;

  const CustomListTileDrawer({
    required this.CustomLeading,
    required this.CustomText,
    required this.CustomTrailing,
    required this.MyRouteName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(CustomLeading),
      iconColor: Colors.white,
      title: Text(
        CustomText,
        style: const TextStyle(color: Colors.white),
      ),
      trailing: Icon(CustomTrailing),
      // ignore: avoid_print
      onTap: () => Navigator.of(context).pushReplacementNamed(MyRouteName),
    );
  }
}
