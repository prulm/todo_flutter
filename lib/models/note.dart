class Note {
  final int id;
  final String content;
  final DateTime created_on;
  final DateTime updated_on;

  Note({
    required this.id,
    required this.content,
    required this.created_on,
    required this.updated_on,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'content': content,
      'created_on': created_on,
      'updated_on': updated_on,
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      id: map['id'],
      content: map['content'],
      created_on: DateTime.parse(map['created_on']),
      updated_on: DateTime.parse(map['updated_on']),
    );
  }
}
