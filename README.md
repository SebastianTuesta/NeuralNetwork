# NeuralNetwork

Example of uses


You want to train the ann whit this data:

s = [0.1 1.2] [0.7 1.8] [0.8 0.6] [1 0.8] [0.3 0.5] [0 0.2] [-0.3 0.8] [-0.5 -1.5] [-1.5 -1.3] <br/>
t = [1 0] [1 0] [1 0] [0 0] [0.6 0] [1 1] [1 1] [1 1] [0 1] [0 1] <br/>
rate learning = 0.3 <br/>
Weights and bias = 0 <br/>
X0 = -1 <br/>

`perceptronTrain (0.3, [0;0], [0 0; 0 0], [-1], [0.1 1.2;0.7 1.8; 0.8 0.6; 1 0.8; 0.3 0.5; 0 0.2; -0.3 0.8; -0.5 -1.5; -1.5 -1.3], [1 0; 1 0; 1 0; 0 0; 0.6 0; 1 1; 1 1;1 1; 0 1; 0 1], 100)`

