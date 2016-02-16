
import "package:polymer_autonotify/polymer_autonotify.dart";
import "package:observe/observe.dart";
import 'package:polymer/polymer.dart';

class Word extends Observable {

  @observable final String word;
  @observable Map<String, String> nominative;
  @observable Map<String, String> accusative;
  @observable Map<String, String> genetive;
  @observable Map<String, String> dative;
  @observable Map<String, String> instrumental;
  @observable Map<String, String> prepositional;

  Word(this.word, [this.nominative, this.accusative, this.genetive, this.dative, this.instrumental, this.prepositional]);

  Word.fromMap(Map map) : this(map["word"], map["nominative"], map["accusative"], map["genetive"], map["dative"], map["instrumental"], map["prepositional"]);

  @override String toString() => "$word";
}