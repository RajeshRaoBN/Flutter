import 'package:scoped_model/scoped_model.dart';
import 'note.dart';

class NotesModel extends Model {
  List<Note> _list = []; //list that stores Note objects



  List<Note> get list {
    //returns a copy of list
    return [..._list];
  }

  void addNote(Note note) {
    //adds a Note object to list
    _list.add(note);
    notifyListeners();
  }

  void removeNote(Note note) {
    _list.remove(note); //removes a Note object from list
    notifyListeners();
  }
}