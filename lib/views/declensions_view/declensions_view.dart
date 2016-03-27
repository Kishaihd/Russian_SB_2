@HtmlImport('declensions_view.html')
library lib.declensions_view;

import 'dart:html';

import 'package:polymer_elements/iron_flex_layout/classes/iron_flex_layout.dart';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import '../../styles/md_table.dart';
import '../../services/logger.dart';

@PolymerRegister('declensions-view')
class DeclensionsView extends PolymerElement {

  @property List model;

  DeclensionsView.created() : super.created();

  void ready() {
    log.info("$runtimeType::ready()");
  }
}