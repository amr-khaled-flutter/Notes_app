import 'package:hive_flutter/hive_flutter.dart';
part 'ItemNoteModel.g.dart';

@HiveType(typeId: 0)
class Itemnotemodel extends HiveObject {
  @HiveField(0)
   String title;
  @HiveField(1)
   String subtitle;
  @HiveField(2)
  final String time;
  @HiveField(3)
  final int color;
  Itemnotemodel({
    required this.time,
    required this.color,
    required this.subtitle,
    required this.title,
  });
}
