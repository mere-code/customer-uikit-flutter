import 'package:tencent_cloud_customer/tencent_cloud_customer.dart';

class TIMUIKitChatUtils {
  static String? getMessageIDWithinIndex(
      List<V2TimMessage?> messageList, int index) {
    if (messageList[index]!.elemType == 11) {
      if (index > 0) {
        return getMessageIDWithinIndex(messageList, index - 1);
      }
    }
    return messageList[index]!.msgID;
  }
}
