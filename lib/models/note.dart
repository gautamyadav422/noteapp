
import 'package:intl/intl.dart';

class Note{
  int _id;
  String _title;
  String _content;
  String _image;
  Note(this._content,this._id,this._image,this._title);

  int get id => _id;
  String get title => _title;
  String get content => _content;
  String get image => _image;

  String get date{
    final date = DateTime.fromMillisecondsSinceEpoch(id);
    return DateFormat('EEE h:mm a,  dd/mm/yyyy').format(date);
  }
}