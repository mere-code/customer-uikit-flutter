import 'package:tencent_cloud_customer/import_proxy/import_proxy.dart';

class WebImport implements ImportProxy {
  @override
  void getFlutterPluginRecord() {
    return;
  }
}

ImportProxy getImportProxy() => WebImport();
