import 'package:flutter/material.dart';
import 'package:flutter_hardwareando/languages/languages_items.dart';

class TextFieldLeran extends StatefulWidget {
  const TextFieldLeran({super.key});

  @override
  State<TextFieldLeran> createState() => _TextFieldLeranState();
}

class _TextFieldLeranState extends State<TextFieldLeran> {
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextField(
                keyboardType: TextInputType.emailAddress,
                focusNode: focusNodeTextFieldOne,
                textInputAction: TextInputAction.next,
                decoration: animated_container(),
                buildCounter: (context,
                        {int? currentLength, bool? isFocused, maxLength}) =>
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      color: Colors.green,
                      height: 10,
                      width: 10.0 * (currentLength ?? 0),
                    )),
            TextField(
              focusNode: focusNodeTextFieldTwo,
            )
          ],
        ));
  }

  InputDecoration animated_container() {
    return const InputDecoration(
        prefixIcon: Icon(Icons.mail_lock_outlined),
        border: UnderlineInputBorder(),
        labelText: LanguagesItems.mailTitle);
  }
}
