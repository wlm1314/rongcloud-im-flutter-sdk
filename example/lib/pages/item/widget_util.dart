
import 'package:flutter/material.dart';

class WidgetUtil {
  ///扩展栏里面的 widget
  static Widget buildExtentionWidget(IconData icon,String text,Function()clicked) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 8,
        ),
        InkWell(
          onTap: () {
            if(clicked != null) {
              clicked();
            }
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width: 40,
              height: 40,
              color: Colors.white,
              child: Icon(icon,size: 28,),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(text,style:TextStyle(fontSize:12))
      ],
    );
  }

  /// 会话页面录音时的 widget
  static Widget buildVoiceRecorderWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(50, 0, 50, 200),
      alignment: Alignment.center,
      child: Container(
        width: 150,
        height: 150,
        color: Colors.blue,
        child: Image.asset("assets/images/voice_recoder.gif"),
      ),
    );
  }
}