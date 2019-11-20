//FileConverter
import 'dart:convert';
import 'dart:io';

class FileConverter {
  static String toBase64(File file) {
    List<int> fileAsBites = file.readAsBytesSync();
    String base64File = base64Encode(fileAsBites);
    return base64File;
  }
}
