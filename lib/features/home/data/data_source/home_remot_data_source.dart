import 'package:bookly_app/core/api_service.dart';
import 'package:bookly_app/core/utils/constant.dart';
import 'package:bookly_app/core/utils/functions/save_box.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/domain/entitys/books_entitys.dart';

abstract class HomeRemotDataSource {
  Future<List<BookEntitys>> fetchFeaturedBooks();
  Future<List<BookEntitys>> fetchNewstBooks();
}

class HomeRemotDataSourceImpl extends HomeRemotDataSource {
  ApiService apiService;
  HomeRemotDataSourceImpl(this.apiService);
  List<BookEntitys> getFeatured(Map<String, dynamic> data) {
    List<BookEntitys> books = [];
    for (var bookList in data['items']) {
      books.add(BookModel.fromJson(bookList));
    }
    return books;
  }

  @override
  Future<List<BookEntitys>> fetchFeaturedBooks() async {
    var data = await apiService.getData(
      endPoint: 'volumes?filter=free-ebooks&q=Programming',
    );
    List<BookEntitys> books = saveFeaturedBooks(data, kFeaturedBooks);

    return books;
  }

  //=================================
  @override
  Future<List<BookEntitys>> fetchNewstBooks() async {
    var data = await apiService.getData(
      endPoint: 'volumes?filter=free-ebooks&q=Programming&Sorting=newest',
    );
    List<BookEntitys> books = saveNewstBooks(data, kNewstBooks);

    return books;
  }

  List<BookEntitys> getNewst(Map<String, dynamic> data) {
    List<BookEntitys> books = [];
    for (var bookList in data['items']) {
      books.add(BookModel.fromJson(bookList));
    }
    return books;
  }
}
