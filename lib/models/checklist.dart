class Checklist {
  final int id;
  final int category;
  final String title;
  final String description;
  final String url;
  final String difficulty;
  final String estimatedTime;
  final bool completed;

  const Checklist({
    this.id,
    this.category,
    this.title,
    this.description,
    this.url,
    this.difficulty,
    this.estimatedTime,
    this.completed
  });

  factory Checklist.fromMap(Map checklistMap) => Checklist(
    id: checklistMap['id'],
    category: checklistMap['category'],
    title: checklistMap['title'],
    description: checklistMap['description'],
    url: checklistMap['url'],
    difficulty: checklistMap['difficulty'],
    estimatedTime: checklistMap['estimatedTime'],
    completed: checklistMap['completed']
  );

  Map<String, dynamic> toMap() => ({
    'id': id,
    'category': category,
    'title': title,
    'description': description,
    'url': url,
    'difficulty': difficulty,
    'estimedTime': estimatedTime,
    'completed': completed
  });
}
