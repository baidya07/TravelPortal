// import 'package:flutter/widgets.dart';
// import 'package:provider/provider.dart';
//
// enum _ViewModelBuilderType { withoutConsumer, withConsumer }
//
// /// withConsumer (consumer wrapped after creating/getting view model)
// /// Using the withConsumer constructor gives you the traditional viewmodel
// /// binding which will rebuild when notifyListeners is called. This is used
// /// when the model does not have to be consumed by multiple different UI's.
//
//
//
//
// /// withoutConsumer (No consumer wrapped after creating/getting view model)
// /// The .withoutConsumer constructor is best used for providing your ViewModel to multiple children widgets.
//
// /// A widget that provides base functionality for the Mvvm style provider architecture by FilledStacks.
// class ViewModelBuilder<T extends ChangeNotifier> extends StatefulWidget {
//
//   final Widget? staticChild;
//
//   /// Fires once when the viewmodel is created or set for the first time
//   final Function(T)? onModelReady;
//
//   /// Builder function with access to the model to build UI form
//   final Widget Function(BuildContext, T, Widget) builder;
//
//
//   /// A builder function that returns the viewmodel for this widget
//   final T Function() viewModelBuilder;
//
//   /// Indicates if you want Provider to dispose the viewmodel when it's removed from the widget tree.
//   ///
//   /// default's to true
//   final bool disposeViewModel;
//
//   /// When set to true a new ViewModel will be constructed everytime the widget is inserted.
//   ///
//   /// When setting this to true make sure to handle all disposing of streams if subscribed
//   /// to any in the ViewModel. [onModelReady] will fire once the viewmodel has been created/set.
//   /// This will be used when on re-insert of the widget the viewmodel has to be constructed with
//   /// a new value.
//   final bool createNewModelOnInsert;
//
//   final _ViewModelBuilderType providerType;
//
//   /// Constructs a viewmodel provider that will not rebuild the provided widget when notifyListeners is called.
//   ViewModelBuilder.withoutConsumer({
//     required this.builder,
//     required this.viewModelBuilder,
//     this.onModelReady,
//     this.disposeViewModel = true,
//     this.createNewModelOnInsert = false,
//   })  : providerType = _ViewModelBuilderType.withoutConsumer,
//         staticChild = null {
//     assert( viewModelBuilder != null,
//     'You have to provide a viewmodel or a viewmodel builder');
//   }
//
//   /// Constructs a viewmodel provider that fires the builder function when notifyListeners is called in the viewmodel.
//   ViewModelBuilder.withConsumer({
//     required this.builder,
//     required this.viewModelBuilder,
//     this.staticChild,
//     this.onModelReady,
//     this.disposeViewModel = true,
//     this.createNewModelOnInsert = false,
//   }) : providerType = _ViewModelBuilderType.withConsumer {
//     assert(viewModelBuilder != null,
//     'You have to provide a viewmodel or a viewmodel builder');
//   }
//
//   @override
//   _ViewModelBuilderState<T> createState() => _ViewModelBuilderState<T>();
// }
//
// class _ViewModelBuilderState<T extends ChangeNotifier>
//     extends State<ViewModelBuilder<T>> {
//   T ?_model;
//
//   @override
//   void initState() {
//     super.initState();
//     // We want to ensure that we only build the model if it hasn't been built yet.
//     if (_model == null) {
//       _createOrSetViewModel();
//
//       if (widget.onModelReady != null) {
//         widget.onModelReady!(_model!);
//       }
//     } else if (widget.createNewModelOnInsert) {
//       _createOrSetViewModel();
//     }
//   }
//
//   void _createOrSetViewModel() {
//     if (widget.viewModelBuilder != null) {
//       _model = widget.viewModelBuilder();
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (widget.providerType == _ViewModelBuilderType.withoutConsumer) {
//       // If we want to reuseExisting or if the dev does not want to dispose the viewmodel then
//       // we use the .value constructor
//       if (!widget.disposeViewModel) {
//         return ChangeNotifierProvider.value(
//           value: _model,
//           child: widget.builder(context, _model!, widget.staticChild),
//         );
//       }
//       return ChangeNotifierProvider(
//         create: (context) => _model,
//         child: widget.builder(context, _model!, widget.staticChild),
//       );
//     }
//
//     if (!widget.disposeViewModel) {
//       // If we want to reuseExisting or if the dev does not want to dispose the viewmodel then
//       // we use the .value constructor
//       return ChangeNotifierProvider.value(
//         value: _model,
//         child: Consumer(
//           builder: widget.builder,
//           child: widget.staticChild,
//         ),
//       );
//     }
//
//     return ChangeNotifierProvider(
//       create: (context) => _model,
//       child: Consumer(
//         builder: widget.builder,
//         child: widget.staticChild,
//       ),
//     );
//   }
// }
//
//
// // // Registering the viewmodel inside the get_it service locator
// // GetIt locator = GetIt.instance;
// //
// // setupServiceLocator() {
// //   // Singleton of the viewmodel
// //   locator.registerLazySingleton<HomeViewModel>(() => HomeViewModel());
// // }
// //
// // // View
// // class HomeView extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     // Using the withConsumer constructor gives you the traditional viewmodel
// //     // binding which will rebuild when notifyListeners is called. But instead
// //     // of creating a new instance of the viewmodel, the singleton instance from
// //     // the get_it locator is passed through.
// //     return ViewModelProvider<HomeViewModel>.withConsumer(
// //       viewModelBuilder: () => locator<HomeViewModel>(),
// //       onModelReady: (model) => model.initialise(),
// //       reuseExisting: true,
// //       builder: (context, model, child) => Scaffold(
// //         floatingActionButton: FloatingActionButton(
// //           onPressed: () {
// //             model.updateTitle();
// //           },
// //         ),
// //         body: Center(
// //           child: Text(model.title),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // // ViewModel
// // class HomeViewModel extends ChangeNotifier {
// //   String title = 'default';
// //
// //   void initialise() {
// //     title = 'initialised';
// //     notifyListeners();
// //   }
// //
// //   int counter = 0;
// //   void updateTitle() {
// //     counter++;
// //     title = '$counter';
// //     notifyListeners();
// //   }
// // }
