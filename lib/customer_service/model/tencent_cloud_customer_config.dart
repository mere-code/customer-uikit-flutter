import 'package:tencent_cloud_customer/customer_service/model/tencent_cloud_customer_qucik_message.dart';

class TencentCloudCustomerConfig {
  /// Determines whether the message read receipt feature is enabled.
  /// If you wish to enable this feature, ensure that your Chat application is on the Premium Edition.
  ///
  /// 是否启用消息已读回执能力。
  /// 如需使用该能力，请确保 IM 应用为旗舰版。
  bool? useMessageReadReceipt;

  /// Determines whether the default quick message button, 'Human Service' is enabled.
  ///
  /// 是否启用默认的 "人工服务" 快捷语按钮。
  bool? showTransferToHumanButton;

  List<TencentCloudCustomerQuickMessage>? additionalQuickMessages;

  TencentCloudCustomerConfig({
    this.useMessageReadReceipt,
    this.showTransferToHumanButton,
    List<TencentCloudCustomerQuickMessage>? additionalQuickMessages,
  });

  TencentCloudCustomerConfig mergeWith(TencentCloudCustomerConfig? other) {
    return TencentCloudCustomerConfig(
      useMessageReadReceipt: other?.useMessageReadReceipt ?? useMessageReadReceipt ?? false,
      showTransferToHumanButton: other?.showTransferToHumanButton ?? showTransferToHumanButton ?? true,
      additionalQuickMessages: other?.additionalQuickMessages ?? additionalQuickMessages ?? const [],
    );
  }
}

