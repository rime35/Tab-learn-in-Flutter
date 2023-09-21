import 'package:flutter/material.dart';

class NavigateDetail extends StatefulWidget {
  const NavigateDetail({super.key, this.isOkey = false});
  final bool isOkey;

  @override
  State<NavigateDetail> createState() => _NavigateDetailState();
}

class _NavigateDetailState extends State<NavigateDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pop(!widget.isOkey);
              },
              icon: Icon(
                Icons.check,
                color: widget.isOkey ? Colors.red : Colors.green,
              ),
              label: widget.isOkey ? Text('Red') : Text('Onayla'))),
    );
  }
}
