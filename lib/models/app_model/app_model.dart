@HtmlImport('app_model.html')
library russian_study_buddy.lib.app_model;

import 'dart:html';

import 'dart:convert';
import 'dart:async';
import "package:polymer_autonotify/polymer_autonotify.dart";
import "package:observe/observe.dart";
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

import '../../models/word.dart';
import '../../models/word_group.dart';
import '../../services/logger.dart';

@PolymerRegister('app-model')
class AppModel extends PolymerElement with AutonotifyBehavior, Observable{
  @observable @property
  WordGroup nouns;

  @observable @property
  WordGroup adjectives;

  @observable @property
  WordGroup verbs;

  AppModel.created() : super.created();

  void ready() {
    log.info("$runtimeType::ready()");
    loadNouns();
//    loadAdjectives();
//    loadVerbs();
  }

  Future loadNouns() async {
    nouns = new WordGroup.fromMap("nouns", JSON.decode(await HttpRequest.getString("resources/data/russian/nouns.json")));

    log.info("$runtimeType::loadNouns() -- $nouns");

  }

  Future loadAdjectives() async {
     log.info("$runtimeType::loadNouns() -- $adjectives");
  }

//  Future loadVerbs() async {
//    verbs = new ObservableMap.from(JSON.decode(await HttpRequest.getString("resources/data/russian/nouns.json")));
//
//
//    log.info("$runtimeType::loadNouns() -- $nounsMap");
//  }

}