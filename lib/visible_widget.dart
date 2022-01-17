import 'package:flutter/material.dart';

class visible_widget extends StatefulWidget {
  @override
  _visible_widgetState createState() => _visible_widgetState();
}

class _visible_widgetState extends State<visible_widget> {
  bool visibleWidget = false;
  @override
  visibleActivity() {
    setState(() {
      visibleWidget = !visibleWidget;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          visibleActivity();
        },
        hoverColor: Colors.black,
        child: visibleWidget?Text("Show"):Text("Hide"),
      ),
      appBar: AppBar(
        title: Text("Visible Activity Flutter"),
      ),
      body: SafeArea(
          child: Center(
            child: Visibility(
              replacement: Text("Click Button",style: TextStyle(
                color: Colors.red,fontSize: 40

              )),
                visible: visibleWidget,
                child: Container(
                  color: Colors.red,
                  height: 300,
                  width: double.infinity,
                )),
          )),
    );
  }
}
