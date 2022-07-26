// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class CustomListTileDrawer extends StatelessWidget {
  final IconData CustomLeading;
  final String CustomText;
  final IconData CustomTrailing;

  const CustomListTileDrawer({
    required this.CustomLeading,
    required this.CustomText,
    required this.CustomTrailing,
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
      onTap: () => print('clic sur un element'),
    );
  }
}
