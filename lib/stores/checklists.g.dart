// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklists.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChecklistList on ChecklistListBase, Store {
  Computed<ObservableList<Checklist>> _$completedListsComputed;

  @override
  ObservableList<Checklist> get completedLists => (_$completedListsComputed ??=
          Computed<ObservableList<Checklist>>(() => super.completedLists))
      .value;
  Computed<bool> _$hasCompletedListsComputed;

  @override
  bool get hasCompletedLists => (_$hasCompletedListsComputed ??=
          Computed<bool>(() => super.hasCompletedLists))
      .value;
  Computed<ObservableList<Checklist>> _$visibleListsComputed;

  @override
  ObservableList<Checklist> get visibleLists => (_$visibleListsComputed ??=
          Computed<ObservableList<Checklist>>(() => super.visibleLists))
      .value;

  final _$checklistsAtom = Atom(name: 'ChecklistListBase.checklists');

  @override
  ObservableList<Checklist> get checklists {
    _$checklistsAtom.context.enforceReadPolicy(_$checklistsAtom);
    _$checklistsAtom.reportObserved();
    return super.checklists;
  }

  @override
  set checklists(ObservableList<Checklist> value) {
    _$checklistsAtom.context.conditionallyRunInAction(() {
      super.checklists = value;
      _$checklistsAtom.reportChanged();
    }, _$checklistsAtom, name: '${_$checklistsAtom.name}_set');
  }

  final _$filterAtom = Atom(name: 'ChecklistListBase.filter');

  @override
  VisibilityFilter get filter {
    _$filterAtom.context.enforceReadPolicy(_$filterAtom);
    _$filterAtom.reportObserved();
    return super.filter;
  }

  @override
  set filter(VisibilityFilter value) {
    _$filterAtom.context.conditionallyRunInAction(() {
      super.filter = value;
      _$filterAtom.reportChanged();
    }, _$filterAtom, name: '${_$filterAtom.name}_set');
  }

  @override
  String toString() {
    final string =
        'checklists: ${checklists.toString()},filter: ${filter.toString()},completedLists: ${completedLists.toString()},hasCompletedLists: ${hasCompletedLists.toString()},visibleLists: ${visibleLists.toString()}';
    return '{$string}';
  }
}
