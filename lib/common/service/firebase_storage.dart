import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:booking_doctor/common/values/values.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

class FirebaseStorageService {
  Future getImgUrl(String ref) async {
    final spaceRef =
        FirebaseStorage.instance.ref(ref).child(AssetImgValue.avt_default);
    var str = await spaceRef.getDownloadURL();
    return str;
  }

  Future<File> _compressFile(File file) async {
    XFile? result;
    final newPath = p.join(
      (await getTemporaryDirectory()).path,
      '${DateTime.now().millisecondsSinceEpoch.toString()}'
      '${p.extension(file.path)}',
    );
    result = await FlutterImageCompress.compressAndGetFile(
      file.path,
      newPath,
      format: p.extension(file.path) == ".png"
          ? CompressFormat.png
          : CompressFormat.jpeg,
    );
    return File(result!.path);
  }

  Future<String?> uploadImg(String ref, File file) async {
    var uuid = Uuid().v1();
    File compressFile = await _compressFile(file);
    final spaceRef = await FirebaseStorage.instance.ref(ref).child(uuid);
    await spaceRef.putFile(
      compressFile,
      SettableMetadata(contentType: "image/png"),
    );
    String? downloadUrl = await spaceRef.getDownloadURL();
    return downloadUrl;
  }

  Future<String?> uploadPdf(File file) async {
    var uuid = Uuid().v1();
    final ref = FirebaseStorage.instance.ref("pdfs").child(uuid);
    await ref.putFile(
      file,
      SettableMetadata(contentType: 'application/pdf'),
    );
    String? downloadUrl = await ref.getDownloadURL();
    return downloadUrl;
  }
}
