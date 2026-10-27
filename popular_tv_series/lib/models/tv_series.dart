class TvSeries {
  final String title;
  final String image;
  final String description;

  TvSeries({
    required this.title,
    required this.image,
    required this.description,
  });
}

// Sample data
final List<TvSeries> tvSeriesList = [
  TvSeries(
    title: 'Breaking Bad',
    image: 'assets/BrBa.jpg',
    description: 'Breaking Bad is a show about ...',
  ),
  TvSeries(
    title: 'Stranger Things',
    image: 'assets/st.jpg',
    description: 'Stranger Things is a show about ...',
  ),
  TvSeries(
    title: 'Game of Thrones',
    image: 'assets/got.jpg',
    description: 'Game of Thrones is a show about ...',
  ),
];