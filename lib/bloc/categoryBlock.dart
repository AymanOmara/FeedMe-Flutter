import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Categories.dart';

part 'categoryEvent.dart';
part 'categoryState.dart';



class CategoryBloc extends Bloc<CategoryEvent, CategoryState>{
  CategoryBloc() : super(CategoryLoading()){
  //on<CategoryLoading>();
  }
  void _onLoadTodos(C)
}