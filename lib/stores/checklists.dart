import 'package:checkthelists/models/checklist.dart';
import 'package:checkthelists/data/checklists.dart' as data;
import 'package:mobx/mobx.dart';

part 'checklists.g.dart';

enum VisibilityFilter { all, completed }

class ChecklistList = ChecklistListBase with _$ChecklistList;

abstract class ChecklistListBase with Store {
  @observable
  ObservableList<Checklist> checklists = ObservableList<Checklist>.of(data.dataList);

  @observable
  VisibilityFilter filter = VisibilityFilter.all;

  @computed
  ObservableList<Checklist> get completedLists =>
    ObservableList.of(checklists.where((checklist) => checklist.completed == true));

  @computed
  bool get hasCompletedLists => completedLists.isNotEmpty;

  @computed
  ObservableList<Checklist> get visibleLists {
    switch (filter) {
      case VisibilityFilter.completed:
        return completedLists;
      default:
        return checklists;
    }
  }

  void dispose() {}
}
