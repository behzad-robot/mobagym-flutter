import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class FileUtils
{
  static Future<String> get _localPath async{
    final directory  = await getApplicationDocumentsDirectory();
    return directory.path;
  }
  //general:
  static Future<File> loadFile(String fileName) async{
    final path = _localPath;
    return File('$path/$fileName');
  }
  static Future<bool> isFileExists(String fileName) async{
    final file = await loadFile(fileName);
    final exists = await file.exists();
    return exists;
  }
  static Future<void> deleteFile(String fileName) async{
    final file = await loadFile(fileName);
    await file.delete();
  }
  //string files:
  static Future<String> loadFileStr(String fileName) async{
    final file = await loadFile(fileName);
    final str = await file.readAsString();
    return str;
  }
  static Future<String> saveFileStr(String fileName,String contents) async{
    final file = await loadFile(fileName);
    final newFile = await file.writeAsString(contents);
    final str = await file.readAsString();
    return str;
  }
}
