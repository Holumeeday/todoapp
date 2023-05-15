class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todolist() {
    return [
      ToDo(id: '01', todoText: 'Morning Exercise', isDone: true),
      ToDo(id: '02', todoText: 'Code 2hr of mobile', isDone: true),
      ToDo(id: '03', todoText: 'Take your drugs', isDone: true),
      ToDo(id: '04', todoText: 'Attend Seminar', ),
      ToDo(id: '05', todoText: 'Access the bank after seminar', ),
      ToDo(id: '06', todoText: 'Prepare for coding class', isDone: false),
      ToDo(id: '07', todoText: 'Buy Food Stuffs', isDone: true),
      ToDo(id: '08', todoText: 'Check up on Bukky', isDone: false),
    ];
  }
}
