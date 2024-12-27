

import 'package:tencent_cloud_customer/tencent_cloud_customer.dart';
import 'package:tencent_cloud_customer/ui/utils/platform.dart';

final outputLogger = TencentCloudChatLog();

class TencentCloudChatLog{
  void i(String text){
    if(!PlatformUtils().isWeb){
      TencentImSDKPlugin.v2TIMManager
          .uikitTrace(trace: text);
    }
  }
}