part of 'categoryBlock.dart';
abstract class CategoryState {
  const CategoryState();

  @override
  List<Object> get props => [];
}

class CategoryLoading extends CategoryState {}

class CategoryLoaded extends CategoryState {
  final List<Category> category;

  const CategoryLoaded({this.category = const <Category>[]});

  @override
  List<Object> get props => category;
}
