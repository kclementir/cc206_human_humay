import 'package:flutter/material.dart';

class PredictionScreen extends StatefulWidget {
  const PredictionScreen({super.key});

  @override
  _PredictionScreenState createState() => _PredictionScreenState();
}

class _PredictionScreenState extends State<PredictionScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController fieldAreaController = TextEditingController();
  TextEditingController plantingDensityController = TextEditingController();
  TextEditingController averageYieldController = TextEditingController();

  double totalYield = 0.0;

  void calculateYield() {
    if (_formKey.currentState!.validate()) {
      double fieldArea = double.parse(fieldAreaController.text);
      double plantingDensity = double.parse(plantingDensityController.text);
      double averageYield = double.parse(averageYieldController.text);

      setState(() {
        totalYield = fieldArea * plantingDensity * averageYield;
      });
    }
  }

  void resetValues() {
    setState(() {
      fieldAreaController.text = '';
      plantingDensityController.text = '';
      averageYieldController.text = '';
      totalYield = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Crop Yield Prediction',
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

        // Calculate field
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Calculate the yield of your crops',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: fieldAreaController,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                      color: Colors.white), // Set text color to white
                  decoration: const InputDecoration(
                    labelText: 'Field Area (in acres)',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .white), // Set line color to white when focused
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white), // Set line color to white
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a value';
                    }
                    if (double.tryParse(value) == null) {
                      return 'Please enter a valid number';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: plantingDensityController,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                      color: Colors.white), // Set text color to white
                  decoration: const InputDecoration(
                    labelText: 'Planting Density (plants per acre)',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .white), // Set line color to white when focused
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white), // Set line color to white
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a value';
                    }
                    if (double.tryParse(value) == null) {
                      return 'Please enter a valid number';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: averageYieldController,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                      color: Colors.white), // Set text color to white
                  decoration: const InputDecoration(
                    labelText: 'Average Yield per Plant (in kg)',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .white), // Set line color to white when focused
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white), // Set line color to white
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a value';
                    }
                    if (double.tryParse(value) == null) {
                      return 'Please enter a valid number';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: calculateYield,
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFF367750), // Button color
                      ),
                      child: const Text(
                        'Calculate Yield',
                        style: TextStyle(
                          color: Colors.white, // White text color
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: resetValues,
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Colors.white), // Border color
                      ),
                      child: const Text(
                        'Reset',
                        style: TextStyle(
                          color: Colors.white, // White text color
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Total Crop Yield: $totalYield kg',
                  style: const TextStyle(
                    color: Colors.white, // White text color
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
