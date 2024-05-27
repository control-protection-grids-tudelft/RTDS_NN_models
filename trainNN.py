# -*- coding: utf-8 -*-
"""
Created on Thu Apr 11 11:35:02 2024

@author: Bara
"""



import numpy as np
import os
import pandas as pd
import matplotlib.pyplot as plt
import string
import gc
import random
from matplotlib.colors import LogNorm

import sys
print(sys.version)

#Selenium Related
#from selenium import webdriver
import winsound
import socket
import time
#from selenium.webdriver.common.keys import Keys


#Data Analysis

from collections import Counter
import seaborn as sns
from sklearn.feature_selection import mutual_info_regression
from sklearn.tree import DecisionTreeRegressor
from sklearn.ensemble import RandomForestRegressor
from sklearn.model_selection import cross_val_score



#NN
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
import tensorflow as tf
from tensorflow.keras.callbacks import EarlyStopping
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import LSTM, Dense
from tensorflow.keras.callbacks import ReduceLROnPlateau
from sklearn.metrics import mean_squared_error
import keras.backend as K
from tensorflow.keras.layers import Input, Conv1D, MaxPooling1D, Flatten, SimpleRNN, Dense
#%%


#Function to clean up coloumn names
def clean_column_name(col_name):
    # Split by '|' and take the last part, then split by '_' and take the first part
    return col_name.split('|')[-1].split('_')[0]


#Place File with CSV RSCAD Data here:

dir_path = r'C:\Users\Bara\Desktop\Final_Data\ErrData\new'
dir_path = ''.join(filter(lambda x: x in string.printable, dir_path))

dir_path2 = r'C:\Users\Bara\Desktop\Final_Data\ErrData\new\test'
dir_path2 = ''.join(filter(lambda x: x in string.printable, dir_path2))

#%%
#Class to extract data for NN training
class WindowGenerator:
    
    def __init__(self, input_width, label_width, shift, all_c):
        self.input_width = input_width
        self.label_width = label_width
        self.shift = shift
        self.all_c = all_c
    
    def split_window(self, features, input_column_indices, label_column_indices):
        input_features = features[:self.input_width, input_column_indices]  # Select specific input columns
        labels = features[self.input_width - 1:self.input_width, label_column_indices]
        if len(label_column_indices) > 1:
            labels = labels.reshape(-1, len(label_column_indices))
        else:
            labels = labels.ravel()
        return input_features, labels
    
    def generate_windows(self, data, input_column_indices, label_column_indices):
        num_windows = data.shape[0] - self.input_width - self.shift + 1
        input_windows = []
        label_windows = []
        for i in range(num_windows):
            feature_data = data[i: i + self.input_width + self.shift]
            inputs, labels = self.split_window(feature_data, input_column_indices, label_column_indices)
            if inputs.size > 0 and labels.size > 0:
                input_windows.append(inputs)
                label_windows.append(labels)
        return input_windows, label_windows
    
    def generate_windows_from_directory(self, directory_path, rows, input_c, target_c):
        all_input_windows = []
        all_label_windows = []
        for filename in os.listdir(directory_path):
            if filename.endswith('.csv'):
                filepath = os.path.join(directory_path, filename)
                df = pd.read_csv(filepath, usecols=self.all_c, nrows=rows)
                # Clean the coloumn names
                df.columns = [clean_column_name(col) for col in df.columns]
                #df['P'] = df['Ppu'] 
                label_column_indices = [df.columns.get_loc(c) for c in target_c]
                input_column_indices = [df.columns.get_loc(c) for c in input_c]
               
                
                df = df.iloc[10:-10]  # Remove first and last 10 data points from every file
                data = df.values
                input_windows, label_windows = self.generate_windows(data, input_column_indices, label_column_indices)
                all_input_windows.extend(input_windows)
                all_label_windows.extend(label_windows)
        all_input_windows = np.array(all_input_windows, dtype=np.float32)
        all_label_windows = np.array(all_label_windows, dtype=np.float32).reshape(-1, len(target_c))
        return all_input_windows, all_label_windows
    
    
#%%   Example Use

n_rows = 600    #Number of rows to extract from every csv datafile

# Make a string array with full names of the coloumns of interest in the csv

all_c = ['Subsystem #1|CTLs|Vars|Ppu_CSA5P','Subsystem #1|CTLs|Vars|Perr_CSA5P', 'Subsystem #1|CTLs|Vars|PIpwr_CSA5P',
         'Subsystem #1|CTLs|Vars|Qpu_CSA5P','Subsystem #1|CTLs|Vars|qerr_CSA5P','Subsystem #1|CTLs|Vars|IQREFq_CSA5P', 
         'Subsystem #1|CTLs|Vars|id_CSA5P','Subsystem #1|CTLs|Vars|iderr_CSA5P','Subsystem #1|CTLs|Vars|outpi1_t_CSA5P', 
         'Subsystem #1|CTLs|Vars|iq_CSA5P','Subsystem #1|CTLs|Vars|iqerr_CSA5P','Subsystem #1|CTLs|Vars|outpi2_t_CSA5P',
         'Subsystem #1|CTLs|Vars|VQ_CSA5PREF', 'Subsystem #1|CTLs|Vars|VD_CSA5PREF'
         ]

# Now make 2 string arrays, one to hold your target variable coloumn names and one for input variables to the NN
# In these 2 arrays use the cleaned coloumn names, which are the letters between "|" and "_" in the names, so
# for example:

target_c = ['PIpwr','IQREFq']
input_c = ['Perr', 'Ppu','qerr', 'Qpu']



# Create A class instance, input_width is the variable deciding the number of timesteps to be extracted for each
# set of data. use all_c array here. The difference between the all_c and the target_c and input_c arrays is that 
# multiple data extractions can happen using same instance aslong as all the varaibles are included in all_c.
#For example, make an instant for 5 timesteps:


Timesteps = 5
    
window_gen = WindowGenerator(input_width=Timesteps, label_width=1, shift=0, all_c=all_c)


# Now use target_c and input_c to extract the relevant data into X and y training NN data: 
#X, y = window_gen.generate_windows_from_directory(dir_path, n_rows, input_c, target_c)
# The shape of x here is (sample, timestep, feature) 

#y = y.flatten() #Uncomment if only one target variable

# now you can use the same class instance to define new input and target variables for for example:
    
    
target_c2 = ['PIpwr']
input_c2 = ['Perr', 'Ppu']
X2, y2 = window_gen.generate_windows_from_directory(dir_path, n_rows, input_c2, target_c2)

y2 = y2.flatten() # Since one target

target_c3 = ['outpi1']
input_c3 = ['iderr', 'id', 'VQ']
X3, y3 = window_gen.generate_windows_from_directory(dir_path, n_rows, input_c3, target_c3)

y3 = y3.flatten() # Since one target



#%% Splitting Data

# Now split data and randomize:

# This is for LSTM training data    
X_train, X_test, y_train, y_test = train_test_split(X2, y2, test_size=0.02, random_state=42)

X_train3, X_test3, y_train3, y_test3 = train_test_split(X3, y3, test_size=0.02, random_state=42)
    
# For ANN training data, you would need to remove the timestep dimension from the X dataframe:
    
X_ANN = X2[:,Timesteps-1,:]

X_trainANN, X_testANN, y_trainANN, y_testANN = train_test_split(X_ANN, y2, test_size=0.02, random_state=42)

#%%
y_trainANN.shape[1]


#%% Building ANN model:

# Build ANN model, add a dense layer with activation in this function. For no activation choose  
# activation='linear'. Below is an example of an ANN with 2 hidden layers and 2 outputs
   
model = Sequential([
    Dense(12, input_shape=(X_ANN.shape[1],), activation='linear'), # First argument is number of weights
    #Dense(12, activation='tanh'),
    Dense(1) # value inside brackets is number of outputs
])

model.compile(optimizer='adam', loss='mean_squared_error')
model.fit(X_trainANN, y_trainANN, epochs=4, batch_size=32, validation_split=0.2)

# Evaluate the model
loss_ann = model.evaluate(X_testANN, y_testANN)

#%% Extract ANN weights:
    
W1, b1 = model.layers[0].get_weights()  # Weights and biases of the first layer (input layer)
W2, b2 = model.layers[1].get_weights()  # Weights and biases of the second layer (hidden layer)
W3, b3 = model.layers[2].get_weights()


# Reorganizing weights to match the desired format for C (Wij = [W11, W21, W31, ... W1j, W2j, W3j...])
# Here we achieve this by flattening the transpose of the weight matrix, to iterate column-wise through the original matrix
# This will be done through the following function:

def printWarray(W):
    WW = W.T.flatten()
    print(f"double W[{len(WW)}] = {{", ', '.join(map(str, WW)), "};")

def printbarray(b):
    print(f"double b[{len(b)}] = {{", ', '.join(map(str, b)), "};")    

def printCarray(W,b): 
    WW = W.T.flatten()
    print(f"double W[{len(WW)}] = {{", ', '.join(map(str, WW)), "};")
    print(f"double b[{len(b)}] = {{", ', '.join(map(str, b)), "};")



#Now you can print weights and biases of each layer as follows:
   
printCarray(W1,b1)
printCarray(W2,b2)
printCarray(W3,b3)
# Copy the output into the C script, the output is in the C form: double b[12] = { -0.0161252, -0.00525138, -0.0025062333... } 


#%% LSTM network:
    
nodes = 1       #Start by defining number of nodes, the timesteps was selected when the data was loaded
model = tf.keras.Sequential()
model.add(tf.keras.layers.LSTM(nodes, input_shape=(X2.shape[1], X2.shape[2])))
model.add(tf.keras.layers.Dense(1))    #A dense layer is required at the end of the LSTM, change argument to 1 if only 1 output
model.compile(optimizer='adam', loss='mean_squared_error')
model.fit(X_train, y_train, epochs=5, verbose=1)

model2 = tf.keras.Sequential()
model2.add(tf.keras.layers.LSTM(nodes, input_shape=(X3.shape[1], X3.shape[2])))
model2.add(tf.keras.layers.Dense(1))    #A dense layer is required at the end of the LSTM, change argument to 1 if only 1 output
model2.compile(optimizer='adam', loss='mean_squared_error')
model2.fit(X_train3, y_train3, epochs=5, verbose=1)
#%% LSTM Weight Printing Function

# basically pass the model as argument and this function will print the weights and biases in C format

   
def printLSTM(model):
    # Extract LSTM layer weights
    lstm_weights = model.layers[0].get_weights()
    W, U, b = lstm_weights[0], lstm_weights[1], lstm_weights[2]

    num_units = model.layers[0].units
    # Splitting the weights and biases for the LSTM
    U_i, U_f, U_c, U_o = U[:, :num_units], U[:, num_units:2*num_units], U[:, 2*num_units:3*num_units], U[:, 3*num_units:]
    W_i, W_f, W_c, W_o = W[:, :num_units], W[:, num_units:2*num_units], W[:, 2*num_units:3*num_units], W[:, 3*num_units:]
    b_i, b_f, b_c, b_o = b[:num_units], b[num_units:2*num_units], b[2*num_units:3*num_units], b[3*num_units:]

    # Transpose the matrices
    U_i = U_i.T
    U_f = U_f.T
    U_c = U_c.T
    U_o = U_o.T

    W_i = W_i.T
    W_f = W_f.T
    W_c = W_c.T
    W_o = W_o.T

    # Extract dense layer weights
    dense_weights, dense_biases = model.layers[1].get_weights()
    dense_weights = dense_weights.T  # Transpose dense layer weights as well

    # Helper function to print weights or biases in C array format
    def print_c_array(name, array):
        flat_array = array.flatten()
        print(f"double {name}[{len(flat_array)}] = {{", ', '.join(map(str, flat_array)), "};")

    # Print LSTM weights and biases
    for name, array in zip(['Wi', 'Wf', 'Wc', 'Wo', 'Ui', 'Uf', 'Uc', 'Uo', 'bi', 'bf', 'bc', 'bo'],
                           [W_i, W_f, W_c, W_o, U_i, U_f, U_c, U_o, b_i, b_f, b_c, b_o]):
        print_c_array(name, array)
    
    # Print dense layer weights and biases
    print_c_array('W', dense_weights)
    print_c_array('b', dense_biases)

# Example Use:
printLSTM(model)

printLSTM(model2)


#%%

#To define initialized weight matricies:

def xavier_init(fan_in, fan_out, gain=1):
    """Xavier initialization using the gain factor for different activations."""
    std = gain * np.sqrt(2.0 / (fan_in + fan_out))
    return np.random.randn(fan_out, fan_in) * std

def initialize_lstm_weights(input_dim, output_dim):
    """Initialize weights for an LSTM layer with Xavier initialization."""
    # Gain for tanh activation
    gain = np.sqrt(2.0 / (1 + np.tanh(1) ** 2))
    
    # Initialize input weights (from input to each gate)
    Wf = xavier_init(input_dim, output_dim, gain)
    Wi = xavier_init(input_dim, output_dim, gain)
    Wc = xavier_init(input_dim, output_dim, gain)
    Wo = xavier_init(input_dim, output_dim, gain)

    # Initialize recurrent weights (from previous output to each gate)
    Uf = xavier_init(output_dim, output_dim, gain)
    Ui = xavier_init(output_dim, output_dim, gain)
    Uc = xavier_init(output_dim, output_dim, gain)
    Uo = xavier_init(output_dim, output_dim, gain)

    # Initialize biases for each gate
    bf = np.zeros(output_dim)
    bi = np.zeros(output_dim)
    bc = np.zeros(output_dim)
    bo = np.zeros(output_dim)

    return Wf, Uf, bf, Wi, Ui, bi, Wc, Uc, bc, Wo, Uo, bo

def initialize_dense_weights(input_dim, output_dim):
    """Initialize weights for a dense layer using Xavier initialization."""
    W = xavier_init(input_dim, output_dim)
    b = np.zeros(output_dim)
    return W, b

def print_weights_in_c_format(weights, name):
    """Print the weights in a flattened format suitable for C arrays."""
    flat_weights = weights.flatten()
    print(f"double {name}[{len(flat_weights)}] = {{{', '.join(format(w, '.8f') for w in flat_weights)}}};")

# Parameters
input_dim = 6
lstm_nodes = 10
output_nodes = 6

# Initialize weights
Wf, Uf, bf, Wi, Ui, bi, Wc, Uc, bc, Wo, Uo, bo = initialize_lstm_weights(input_dim, lstm_nodes)
W, b = initialize_dense_weights(lstm_nodes, output_nodes)

# Optionally print weights to verify
print_weights_in_c_format(Wf, "Wf")
print_weights_in_c_format(Uf, "Uf")  














#%%
# Print weights in C format
print_weights_in_c_format(Wf, "Wf")
print_weights_in_c_format(Wi, "Wi")
print_weights_in_c_format(Wc, "Wc")
print_weights_in_c_format(Wo, "Wo")

#%%
print_weights_in_c_format(Uf, "Uf")


print_weights_in_c_format(Ui, "Ui")


print_weights_in_c_format(Uc, "Uc")


print_weights_in_c_format(Uo, "Uo")
#%%
print_weights_in_c_format(W, "W")
print_weights_in_c_format(b, "b")

















