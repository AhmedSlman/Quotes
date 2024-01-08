import 'package:equatable/equatable.dart';

class Qoute extends Equatable {
  final String author;
  final int id;
  final String content;

  Qoute(this.author, this.id, this.content);
  @override
  // TODO: implement props
  List<Object?> get props => [
        author,
        id,
        content,
      ];
}
