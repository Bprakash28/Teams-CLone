import 'package:flutter/material.dart';
import 'package:teams_clone/models/call.dart';
import 'package:teams_clone/resources/call_methods.dart';

class CallScreen extends StatefulWidget {
  final Call call;

  CallScreen({
    @required this.call,
  });
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  final CallMethods callMethods = CallMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Call has been made"),
            MaterialButton(
              color: Colors.redAccent,
              child: Icon(
                Icons.call_end,
                color: Colors.white,
              ),
              onPressed: () {
                callMethods.endCall(call: widget.call);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
