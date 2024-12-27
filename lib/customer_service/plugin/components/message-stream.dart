import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tencent_im_base/tencent_im_base.dart';

class MessageStream extends StatefulWidget {
  final dynamic payload;
  const MessageStream({super.key, this.payload});
  @override
  State<StatefulWidget> createState() => _MessageStreamState();
}

class _MessageStreamState extends TIMState<MessageStream> {
  String text = '';
  String displayText = '';
  bool isFinish = false;
  int index = 0;
  late Timer timer;
  StreamController<String> _streamController = StreamController<String>();
  @override
  initState() {
    super.initState();
    if (widget.payload['chunks'].length > 0) {
      handleText();
    }
    isFinish = widget.payload['isFinished'] == 1 ? true : false;
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void updateDisplayText() {
    timer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      if (index < text.length) {
        setState(() {
          _streamController.add(text[index]);
          displayText += text[index];
          index++;
        });
      } else {
        timer.cancel();
      }
    });
  }

  void handleText() {
    final newText = widget.payload['chunks'].join('');
    if (newText.length > index) {
      text = newText;
      updateDisplayText();
    }
  }

  @override
  Widget timBuild(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(maxWidth: 350),
        child: StreamBuilder(
          stream: _streamController.stream,
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            // 有新数据就刷新，这里会执行多次
            if (displayText.isNotEmpty) {
              // return Text(displayText);
              return MarkdownBody(data: displayText);
            }

            // 正在请求，转圈等待
            return const CircularProgressIndicator();
          },
        ));
  }
}
