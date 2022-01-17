import 'package:flutter/material.dart';
import 'package:flutter_test_widgets/visible_widget.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class option_menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Widgets"),
      ),
      body: SafeArea(
          child: Center(
            child: ListView(
        children: [
          option_body("Visible Activity",visible_widget())
        ],
      ),
          )),
    );
  }

}
class option_body extends StatelessWidget {
  String option_name;
  Widget page_name;
  option_body(this.option_name,this.page_name);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              fixedSize: Size(250,50)
            ),
            onPressed: (){
              Navigator.of(context).push(SwipeablePageRoute(
                builder: (BuildContext context) => page_name,
              ));
            },
            child: Text("$option_name",style: TextStyle(
              fontSize: 20,
            )),
          ),
        ),
      ),
    );
  }
}

