import 'package:flutter/material.dart';
import 'package:hourhero/presentation/core/widgets/custom_alert_dialog.dart';
import 'package:hourhero/presentation/core/widgets/custom_button.dart';

class CancelAndSaveWidget extends StatefulWidget {
  final Function callbackCancel;
  final Function callbackSave;

  const CancelAndSaveWidget(
      {Key? key, required this.callbackCancel, required this.callbackSave})
      : super(key: key);

  @override
  State<CancelAndSaveWidget> createState() => _CancelAndSaveWidgetState();
}

class _CancelAndSaveWidgetState extends State<CancelAndSaveWidget> {
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomButton(
            icon: const Icon(Icons.cancel),
            text: "Abbrechen",
            callback: () {
              showDialog(
                  context: context,
                  builder: (context) =>
                      CustomAlertDialog(callbackCancel: widget.callbackCancel));
            },
            color: themeData.colorScheme.primaryContainer,
            textcolor: themeData.colorScheme.onSecondary),
        const SizedBox(
          width: 20,
        ),
        CustomButton(
            icon: const Icon(
              Icons.save,
              color: Colors.white,
            ),
            text: "Speichern",
            callback: () {
              widget.callbackSave();
            },
            color: themeData.colorScheme.tertiary,
            textcolor: Colors.white),
      ],
    );
  }
}
