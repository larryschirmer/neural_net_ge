# Modeling Paper Degradation

### Table of Contents
1. dangerArea.html
  - Uses the output from the neural network to create a heat map of the relationship that temperature and humidity have on life expectancy years of paper.
  - pulls data from `data.csv`
2. nnProcess.html
  - This is a processing file for the feed forward neural network. The first stage of the file (currently commented out), is used to train the network then output the results to the console. In the second stage, the neural network state is pulled from `nnsave.json` and used to populate a csv with every possible integer value between 0-99. This data is then copied to `data.csv` and used to populate the main heat map.
3. DIHACK/index.html
  - The front-end interface for the application.
4. ThermostatControl.m
  - An arduino sketch used to take input from the system/cloud and control the analog thermostat in cold storage. This is the intervention step incase temperature or humidity become out of bounds.
5. ESteelMaterials.zip
  - ESteel documentation, includes PDF of slide deck with incomplete documentation of team activities, as well as relevant code files and spreadsheets containing data, and PDFs of literature references that contributed to material kinetic modeling. Also includes files provided by Samuel John and Javad Roostai.
6. MatlabCodeV2.m
  - Code used to process and model the data to produce the 3d heat map of temp and humidity vs years of life expectancy.
