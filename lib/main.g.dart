// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Repro on ReproBase, Store {
  final _$tabIconsAtom = Atom(name: 'ReproBase.tabIcons');

  @override
  List<Icon> get tabIcons {
    _$tabIconsAtom.reportRead();
    return super.tabIcons;
  }

  @override
  set tabIcons(List<Icon> value) {
    _$tabIconsAtom.reportWrite(value, super.tabIcons, () {
      super.tabIcons = value;
    });
  }

  @override
  String toString() {
    return '''
tabIcons: ${tabIcons}
    ''';
  }
}
