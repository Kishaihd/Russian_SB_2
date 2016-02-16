@HtmlImport('main_app.html')
library message_cipher.lib.main_app;

import 'dart:html';

import 'package:polymer_elements/iron_flex_layout/classes/iron_flex_layout.dart';
import 'package:polymer_elements/paper_header_panel.dart';
import 'package:polymer_elements/paper_toolbar.dart';
import 'package:polymer_elements/paper_material.dart';
import 'package:polymer_elements/paper_icon_button.dart';
import 'package:polymer_elements/paper_textarea.dart';
import 'package:polymer_elements/paper_tabs.dart';
import 'package:polymer_elements/paper_tab.dart';
import 'package:polymer_elements/iron_pages.dart';
import "package:polymer_autonotify/polymer_autonotify.dart";
import "package:observe/observe.dart";
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import '../../services/logger.dart';
import '../../models/app_model/app_model.dart';
import '../../models/word.dart';
import '../../models/word_group.dart';

@PolymerRegister('main-app')
class MainApp extends PolymerElement with AutonotifyBehavior, Observable {
  @observable @property
  AppModel model;

  @observable @property
  int currentTab = 0;



  MainApp.created() : super.created();

  void ready() {
    log.info("$runtimeType::ready()");

    model = $["model"];
  }



}