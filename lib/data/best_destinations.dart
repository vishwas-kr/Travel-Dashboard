import 'package:travel_dashboard/models/best_destination_model.dart';

class BestDestinations {
  static List<BestDestinationModel> bestDestination = [
    BestDestinationModel(
      title: 'Redwood Forest',
      location: 'California',
      rating: '4.8',
      image: 'assets/images/best_destination/c4.png',
      price: '150',
    ),
    BestDestinationModel(
      title: 'Snowy Hills',
      location: 'Canada',
      rating: '4.6',
      image: 'assets/images/best_destination/c1.png',
      price: '200',
    ),
    BestDestinationModel(
      title: 'Green Land',
      location: 'Amazon',
      rating: '4.5',
      image: 'assets/images/best_destination/c2.png',
      price: '120',
    ),
    BestDestinationModel(
      title: 'Mount Baker',
      location: 'North America',
      rating: '4.8',
      image: 'assets/images/best_destination/c5.png',
      price: '220',
    ),
    BestDestinationModel(
      title: 'Wine Woods Fall',
      location: 'Miami',
      rating: '4.8',
      image: 'assets/images/best_destination/c3.png',
      price: '290',
    ),
  ];
}
