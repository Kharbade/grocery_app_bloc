part of 'home_bloc.dart';

abstract class HomeEvent {}

class HomeInitialEvent extends HomeEvent{}

class HomeProductWishListButtonClickedEvent extends HomeEvent{
  final ProductDataModel clickedProduct;

  HomeProductWishListButtonClickedEvent({required this.clickedProduct});

}

class HomeProductCartButtonClickedEvent extends HomeEvent{
  final ProductDataModel clickedProduct;

  HomeProductCartButtonClickedEvent({required this.clickedProduct});
}

class HomeWishListButtonNavigateClickedEvent extends HomeEvent{}

class HomeCartButtonNavigateClickedEvent extends HomeEvent{}
