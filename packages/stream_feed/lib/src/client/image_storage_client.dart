import 'package:dio/dio.dart';
import 'package:stream_feed_dart/src/core/api/images_api.dart';
import 'package:stream_feed_dart/src/core/models/crop.dart';
import 'package:stream_feed_dart/src/core/models/resize.dart';
import 'package:stream_feed_dart/src/core/util/token_helper.dart';

class ImageStorageClient {
  const ImageStorageClient(this.secret, this.images);
  final String secret;
  final ImagesApi images;

  
  Future<String?> upload(MultipartFile image) {
    final token = TokenHelper.buildFilesToken(secret, TokenAction.write);
    return images.upload(token, image);
  }

  
  Future<void> delete(String url) {
    final token = TokenHelper.buildFilesToken(secret, TokenAction.delete);
    return images.delete(token, url);
  }

  
  Future<String?> get(String url) {
    final token = TokenHelper.buildFilesToken(secret, TokenAction.read);
    return images.get(token, url);
  }

  
  Future<String?> getCropped(String url, Crop crop) {
    final token = TokenHelper.buildFilesToken(secret, TokenAction.read);
    return images.get(token, url, options: crop.params);
  }


  Future<String?> getResized(String url, Resize resize) {
    final token = TokenHelper.buildFilesToken(secret, TokenAction.read);
    return images.get(token, url, options: resize.params);
  }
}
