import 'package:bookly_app/core/api_service.dart';
import 'package:bookly_app/features/home/data/data_source/home_remot_data_source.dart';
import 'package:bookly_app/features/home/domain/entitys/books_entitys.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

List<BookEntitys> saveFeaturedBooks(Map<String, dynamic> data, String boxName) {
  List<BookEntitys> books = HomeRemotDataSourceImpl(
    ApiService(Dio()),
  ).getFeatured(data);
  var featuredBox = Hive.box<BookEntitys>(boxName);

  featuredBox.addAll(books);
  return books;
}

List<BookEntitys> saveNewstBooks(Map<String, dynamic> data, String boxName) {
  List<BookEntitys> books = HomeRemotDataSourceImpl(
    ApiService(Dio()),
  ).getNewst(data);

  var newstBox = Hive.box<BookEntitys>(boxName);
  newstBox.addAll(books);
  return books;
}
