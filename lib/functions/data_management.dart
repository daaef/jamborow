import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

read(String filename) async {
  try {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/$filename.txt');
    String text = await file.readAsString();
    Map decodedData = jsonDecode(text);

    return decodedData;
  } catch (e) {
    print("Couldn't read file");
  }
}

save(Map authDetails, filename) async {
  Map savedAuthDetail = await read(filename);
  if (savedAuthDetail == null) {
    // savedAuthDetail = _signInValues;
    savedAuthDetail = authDetails;
    print('$savedAuthDetail was added');
  } else {
    print(await read(filename));
    print('Auth Details Exists');
    return;
  }

  final directory = await getApplicationDocumentsDirectory();
  final file = File('${directory.path}/$filename.txt');

  await file.writeAsString(jsonEncode(savedAuthDetail));
  print('saved Auth Details');
  print('printing auth text ${await read(filename)}');
}
