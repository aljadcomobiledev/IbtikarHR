import 'package:permission_handler/permission_handler.dart';

class CheckPermission {
  isStoragePermission() async {
    var isStorage = await Permission.storage.status;
    print("permission is: $isStorage");
    if (!isStorage.isGranted) {
      await Permission.storage.request();
      if (!isStorage.isGranted) {
        print("permission is false");

        return false;
      } else {
        print("permission is true");

        return true;
      }
    } else {
      return true;
    }
  }
}
