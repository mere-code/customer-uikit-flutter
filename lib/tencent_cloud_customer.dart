library tencent_cloud_customer;

import 'package:tencent_cloud_customer/customer_service/manager/tencent_cloud_customer_manager.dart';
import 'package:tencent_cloud_customer/customer_service/manager/tencent_cloud_customer_manager_impl.dart';
import 'package:tencent_im_base/tencent_im_base.dart';

import 'package:tencent_cloud_customer/data_services/services_locatar.dart';
import 'data_services/core/core_services_implements.dart';
export 'data_services/core/core_services_implements.dart';
export 'package:tencent_im_base/theme/tui_theme.dart';
export 'package:tencent_im_base/theme/color.dart';

// Sticker
export 'package:tim_ui_kit_sticker_plugin/tim_ui_kit_sticker_plugin.dart';

// Widgets
export 'package:tencent_cloud_customer/ui/views/TIMUIKitChat/tim_uikit_chat.dart';
export 'package:tencent_cloud_customer/ui/views/TIMUIKitChat/TIMUIKItMessageList/tim_uikit_chat_history_message_list_item.dart';
export 'package:tencent_cloud_customer/ui/widgets/unread_message.dart';
export 'package:tencent_cloud_customer/ui/views/TIMUIKitChat/TIMUIKitTextField/tim_uikit_more_panel.dart';
export 'package:tencent_cloud_customer/ui/views/TIMUIKitChat/TIMUIKitTextField/tim_uikit_text_field_controller.dart';
export 'package:tencent_cloud_customer/ui/views/TIMUIKitChat/TIMUIKitAppBar/tim_uikit_appbar.dart';
export 'package:tencent_cloud_customer/ui/views/TIMUIKitChat/TIMUIKItMessageList/tim_uikit_chat_history_message_list.dart';
export 'package:tencent_cloud_customer/ui/views/TIMUIKitChat/TIMUIKitTextField/tim_uikit_text_field.dart';
export 'package:tencent_im_base/tencent_im_base.dart';
export 'package:tencent_cloud_customer/ui/widgets/link_preview/models/link_preview_content.dart';
export 'package:tencent_cloud_customer/ui/widgets/column_menu.dart';

// Enum
export 'package:tencent_cloud_customer/ui/theme/tim_uikit_message_theme.dart';

// Config
export 'package:tencent_cloud_customer/ui/views/TIMUIKitChat/tim_uikit_chat_config.dart';
export 'package:permission_handler/permission_handler.dart';

// Utils
export 'package:tencent_cloud_customer/ui/utils/common_utils.dart';
export 'package:tencent_cloud_uikit_core/tencent_cloud_uikit_core.dart';

// Customer
export 'package:tencent_cloud_customer/customer_service/model/tencent_cloud_customer_config.dart';

class TencentCloudCustomer {
  static TencentCloudCustomerManager get _manager => TencentCloudCustomerManager();
  static TencentCloudCustomerInit get init => _manager.init;
  static TencentCloudCustomerNavigate get navigate => _manager.navigate;

  static TCustomerCoreServicesImpl getIMUIKitInstance() {
    setupIMServiceLocator();
    return serviceLocator<TCustomerCoreServicesImpl>();
  }

  static V2TIMManager getIMSDKInstance() {
    return TencentImSDKPlugin.v2TIMManager;
  }
}
