# Tencent Cloud Desk Customer UIKit

**Tencent Cloud Desk Customer UIKit** is a Flutter library designed for seamless integration of Tencent Cloud Desk customer service features into your app. With minimal code, you can implement a professional chat interface tailored to intelligent customer service scenarios. This package eliminates the need to manage complex Chat integrations while offering a customizable and efficient solution for customer interaction.

---

## Key Features

- **Purpose-built for customer service scenarios:** Focused design for UI, interactions, and functionality to enhance the smart customer service experience.
- **Effortless integration:** Add a fully functional customer service module with just a few lines of code.
- **Customizable configuration:** Global and session-level configurations to fit your specific needs.

---

## Requirements

### Environment

- **Flutter version:** 3.24 or above
- **Platform support:** Works on both simulators and physical devices.

> **Note:** If your project uses a Flutter version earlier than 3.24, it is highly recommended to upgrade. For older Flutter versions, consider using the legacy IM UIKit + customer service plugin combination.

### Prerequisites

Ensure you have completed the necessary backend setup:
1. Added customer service agents.
2. Configured skill groups.
3. Created conversation service flows.

For more information on these steps, refer to the Tencent Cloud Desk **[Quick Start Guide](https://www.tencentcloud.com/document/product/1047/58964)**.

---

## Installation

Add the `tencent_cloud_customer` package to your project:

```bash
flutter pub add tencent_cloud_customer
```

---

## How to Use

### 1. Initialize the Customer Service SDK

Call the `init` method to initialize the SDK and configure global settings. You'll need [Tencent Cloud Chat credentials (SDKAppID, userID, userSig)](https://www.tencentcloud.com/document/product/1047/33517) for authentication.

#### Example:

```dart
import 'package:tencent_cloud_customer/tencent_cloud_customer.dart';

TencentCloudCustomer.init(
  sdkAppID: "SDKAppID", // Your SDKAppID from Tencent Cloud Chat Console
  userID: "userID", // The UserID for authentication
  userSig: "userSig", // The UserSig for authentication
  config: TencentCloudCustomerConfig(), // Optional: Default global configuration for all the customer service experience
);
```

---

### 2. Open the Customer Service Chat Interface

Use the `navigate` method to open the customer service chat page. Session-specific configurations can override the global defaults for more granular control.

#### Example:

```dart
import 'package:tencent_cloud_customer/tencent_cloud_customer.dart';

TencentCloudCustomer.navigate(
  context: context, // Flutter's BuildContext
  customerServiceID: "@customer_service_account", // The customer service account ID to initiate a chat with
  config: TencentCloudCustomerConfig(), // Optional: Additional configuration specific to this session
);
```

---

## Learn More

Refer to the official [Tencent Cloud Desk Documentation](https://www.tencentcloud.com/document/product/1047/63268) for detailed guidance.
