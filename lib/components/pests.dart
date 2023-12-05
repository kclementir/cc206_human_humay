import 'package:flutter/material.dart';

class PestsScreen extends StatelessWidget {
  const PestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pests and Diseases',
          style: TextStyle(
            fontFamily: 'Brand',
            color: Color(0xFF367750),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Color(
              0xFF367750), // Change this color to the desired color for the arrow
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF367750),
              Color(0xFF8B8421),
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Diseases By Stage',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'All pests and diseases might appear in your crop at different stages',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16.0),
              _buildStageContainer(context, 'Seedling Stage',
                  'The seedling stage is the initial phase of rice growth, where young rice plants emerge from seeds and develop their first set of leaves. This stage is critical for establishing a healthy crop.'),
              _buildStageContainer(context, 'Vegetative Stage',
                  'During the vegetative stage, rice plants focus on leaf and stem development. They grow rapidly and form a dense canopy, preparing for the reproductive phase.'),
              _buildStageContainer(context, 'Flowering Stage',
                  'In the flowering stage, rice plants produce panicles containing flowers. Pollination occurs, leading to the formation of grains. This stage is crucial for determining the potential yield.'),
              _buildStageContainer(context, 'Fruiting Stage',
                  'The fruiting stage follows pollination, where fertilized flowers develop into rice grains. Proper care during this stage is essential for achieving optimal grain size and quality.'),
              _buildStageContainer(context, 'Harvesting Stage',
                  'The harvesting stage marks the culmination of the rice growth cycle. Matured grains are ready for harvest, and farmers gather the crop. Harvesting practices impact overall yield and grain quality.'),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToStagePage(
      BuildContext context, String stage, String description) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StagePage(stage: stage, description: description),
      ),
    );
  }

  Widget _buildStageContainer(
      BuildContext context, String stage, String description) {
    return GestureDetector(
      onTap: () => _navigateToStagePage(context, stage, description),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              stage,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF367750),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StagePage extends StatelessWidget {
  final String stage;
  final String description;

  const StagePage({super.key, required this.stage, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: Text(stage),
          ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              stage,
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Pests and diseases that might appear in your crops, ordered from most common to least common.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
