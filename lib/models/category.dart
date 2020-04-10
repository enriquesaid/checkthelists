class Category {
  final int id;
  final String label;

  const Category({
    this.id = -1,
    this.label = ''
  });

  factory Category.fromMap(Map<String, dynamic> categoryMap) => Category(
    id: categoryMap['id'],
    label: categoryMap['label']
  );

  Map<String, dynamic> toMap() => ({
    'id': id,
    'label': label
  });
}
