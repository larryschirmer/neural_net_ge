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
