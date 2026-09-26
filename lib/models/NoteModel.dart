
import 'package:hive/hive.dart';

part 'NoteModel.g.dart';
@HiveType(typeId: 0)
class Notemodel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final int color;
  @HiveField(3)
  final String time;
  Notemodel({
    required this.color,
    required this.subtitle,
    required this.time,
    required this.title,
  });
}
