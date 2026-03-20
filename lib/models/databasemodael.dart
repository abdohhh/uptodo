class Databasemodael {
  final String Tasktitle;
  final String Description;
  final int TaskPriority;
  //  final DateTime TaskAlarm;
  //   final bool isCompleted;

  Databasemodael({
    required this.Tasktitle,
    required this.Description,
    required this.TaskPriority,
  });

  Map<String, dynamic> toMap() {
    return {
      'Tasktitle': Tasktitle,
      'Description': Description,
      'TaskPriority': TaskPriority,
      // 'TaskAlarm': TaskAlarm.toIso8601String(),
      // 'isCompleted': isCompleted ? 1 : 0,
    };
  }
}
