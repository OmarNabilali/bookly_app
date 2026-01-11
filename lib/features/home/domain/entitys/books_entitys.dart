import 'package:hive/hive.dart';
part "books_entitys.g.dart";

@HiveType(typeId: 0)
class BookEntitys extends HiveObject {
  @HiveField(0)
  final String? imgUrl;
  @HiveField(1)
  final String? author;
  @HiveField(2)
  final String title;

  BookEntitys({
    required this.imgUrl,
    required this.author,
    required this.title,
  });
}
