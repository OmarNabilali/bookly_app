import 'package:bookly_app/core/utils/constant.dart';
import 'package:bookly_app/features/home/domain/entitys/books_entitys.dart';
import 'package:hive_flutter/adapters.dart';

abstract class HomeLocalDataSource {
  List<BookEntitys> fetchFeatured();
  List<BookEntitys> fetchNewst();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntitys> fetchFeatured() {
    var box = Hive.box<BookEntitys>(kFeaturedBooks);
    List<BookEntitys> books = [];
    books.addAll(box.values.toList());
    return books;
  }

  @override
  List<BookEntitys> fetchNewst() {
    var newtsBox = Hive.box<BookEntitys>(kNewstBooks);
    List<BookEntitys> books = [];
    books.addAll(newtsBox.values.toList());
    return books;
  }
}
