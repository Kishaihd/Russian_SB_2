
import "package:polymer_autonotify/polymer_autonotify.dart";
import "package:observe/observe.dart";
import 'package:polymer/polymer.dart';

import 'word.dart';
import '../services/logger.dart';

class WordGroup extends Observable {

  @observable String name;
  @observable List masculine;
  @observable List feminine;
  @observable List neuter;
//  @observable List genderless;

  WordGroup(this.name, [this.masculine, this.feminine, this.neuter]);

  WordGroup.fromMap(String name, Map map) {
    this.name = name;

    if (map["masculine"] != null) {
      masculine =  new ObservableList.from((map["masculine"] as List).map((Map map) => new Word.fromMap(map)).toList());

      //if (map["feminine"] != null) {
        feminine =  new ObservableList.from((map["feminine"] as List).map((Map map) => new Word.fromMap(map)).toList());
      //}

      if (map["neuter"] != null) {
        neuter =  new ObservableList.from((map["neuter"] as List).map((Map map) => new Word.fromMap(map)).toList());
      }
      log.info("$runtimeType::WordGroup -- $masculine");
    }
//    else {
//      if (map["genderless"] != null) {
//        genderless =  new ObservableList.from((map["genderless"] as List).map((Map map) => new Word.fromMap(map)).toList());
//        log.info("$runtimeType::WordGroup -- $genderless");
//      }
//      else {
//        // There was a problem.
//      }
//    }

  }

  @override String toString() => "WordGroup: $name";
}