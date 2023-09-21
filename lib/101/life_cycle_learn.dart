import 'package:flutter/material.dart';

class LifeCycleLeran extends StatefulWidget {
  const LifeCycleLeran({super.key, required this.message});
  final String message;

  @override
  State<LifeCycleLeran> createState() => _LifeCycleLeranState();
}

class _LifeCycleLeranState extends State<LifeCycleLeran> {
  String _message = '';
  bool _issOdd = false;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('c');
  }

  @override
  void didUpdateWidget(covariant LifeCycleLeran oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('b');
  }

  @override
  void initState() {
    super.initState();
    print('a');
    _issOdd = widget.message.length.isOdd;
    computeName();
  }

  void computeName() {
    if (_issOdd) {
      _message += 'Çift';
    } else {
      _message += 'tel';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: _issOdd ? Text('Kelime tek') : Text("Kelime çift"),
        ),
        body: _issOdd
            ? TextButton(onPressed: () {}, child: Text(_message))
            : ElevatedButton(onPressed: () {}, child: Text(_message)));
  }
}
