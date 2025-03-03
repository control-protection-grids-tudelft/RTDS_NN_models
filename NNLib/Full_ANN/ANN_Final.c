VERSION:
3.001

// Include file below is generated by C-Builder      
// and contains the variables declared as -          
// PARAMETERS, INPUTS, OUTPUTS . . .                 
#include "ANN_Final.h"


STATIC:
double testout;
// -----------------------------------------------   
// Variables declared here may be used in both the   
// RAM: and CODE: sections below.                    
// -----------------------------------------------   
//    double dt;    
double W1[20] = { 0.36124194, 0.4989551, 0.31930834, 0.48265857, -0.121664636, -0.2999663, 0.29453927, 0.306944, -0.6435753, -0.9094869, 0.09610881, 0.025032252, -0.15657105, -0.3974598, 0.38500407, -0.084753044, -0.24934039, -0.57552177, 0.029284745, 0.12289268 };
double b1[10] = { 0.027053079, 0.044343665, -0.009734549, 0.0090894215, -0.005103953, -0.0071395226, -0.012398492, -0.007798577, -0.009279356, 0.010157447 };
double Wdense[10] = { -0.048054777, 0.06905856, 0.3917438, 0.7176615, -0.7923191, 0.23453055, 0.2590324, 0.48274276, -0.59753394, -0.31637356 };
double bdense[1] = { -0.002245062 };




double W2[100] = {-0.22583243, -0.3128571, -0.09350032, 0.05151762, -0.30170206, 0.10661154, 0.13397811, -0.11715875, 0.13758639, -0.37080519, 
                -0.31552383, 0.1287377, -0.32054045, -0.09309492, -0.16414183, 0.2120127, 0.27156818, -0.07757796, 0.04239552, 0.07195159, 
                0.35205592, -0.09705391, 0.33738564, -0.24524731, -0.28469208, 0.25013072, 0.34036605, 0.1005536, -0.33918098, -0.21197596, 
                -0.33672842, 0.24054585, 0.00333349, -0.21373718, 0.25202225, 0.1339504, -0.11438971, -0.202335, 0.22192653, -0.07065314, 
                -0.23420886, 0.21691918, -0.01982722, 0.04454983, 0.20905534, -0.12017015, -0.08227637, -0.05661371, 0.17212206, 0.32163402, 
                0.29030537, 0.28001923, 0.10797155, -0.0928586, -0.1715331, -0.22887881, 0.22965024, -0.07995217, -0.23201016, 0.31551534, 
                0.24058717, -0.00662784, 0.09372023, 0.36184834, -0.38582336, 0.20313682, -0.24181783, 0.02126562, -0.35802985, -0.05997331, 
                0.02444957, 0.26402214, -0.33622075, 0.06562539, -0.227391, 0.20884189, -0.02009295, 0.01609324, -0.19011545, -0.04081026, 
                -0.17759126, 0.18344933, 0.27615151, -0.14534336, 0.07648921, -0.269402, -0.17234415, -0.35345067, 0.07862321, -0.25229918, 
                0.34235341, 0.14599412, 0.24607825, 0.2897428, 0.02386395, 0.37469776, 0.25695225, 0.354817, -0.05244994, 0.03744153};

double b2[10] = {0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0};


double W3[100] = {-0.22583243, -0.3128571, -0.09350032, 0.05151762, -0.30170206, 0.10661154, 0.13397811, -0.11715875, 0.13758639, -0.37080519, 
                -0.31552383, 0.1287377, -0.32054045, -0.09309492, -0.16414183, 0.2120127, 0.27156818, -0.07757796, 0.04239552, 0.07195159, 
                0.35205592, -0.09705391, 0.33738564, -0.24524731, -0.28469208, 0.25013072, 0.34036605, 0.1005536, -0.33918098, -0.21197596, 
                -0.33672842, 0.24054585, 0.00333349, -0.21373718, 0.25202225, 0.1339504, -0.11438971, -0.202335, 0.22192653, -0.07065314, 
                -0.23420886, 0.21691918, -0.01982722, 0.04454983, 0.20905534, -0.12017015, -0.08227637, -0.05661371, 0.17212206, 0.32163402, 
                0.29030537, 0.28001923, 0.10797155, -0.0928586, -0.1715331, -0.22887881, 0.22965024, -0.07995217, -0.23201016, 0.31551534, 
                0.24058717, -0.00662784, 0.09372023, 0.36184834, -0.38582336, 0.20313682, -0.24181783, 0.02126562, -0.35802985, -0.05997331, 
                0.02444957, 0.26402214, -0.33622075, 0.06562539, -0.227391, 0.20884189, -0.02009295, 0.01609324, -0.19011545, -0.04081026, 
                -0.17759126, 0.18344933, 0.27615151, -0.14534336, 0.07648921, -0.269402, -0.17234415, -0.35345067, 0.07862321, -0.25229918, 
                0.34235341, 0.14599412, 0.24607825, 0.2897428, 0.02386395, 0.37469776, 0.25695225, 0.354817, -0.05244994, 0.03744153};

double b3[10] = {0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0};



//double W2[100] = {0.0};
//double b2[10] = {0.0};

//double W3[100] = {0.0};
//double b3[10] = {0.0};


//double Wdense[100] = {0.0};
//double bdense[10] = {0.0};


int N;
//int n;
int Y;

int N1;
int N2;
int N3;

double X[10] = {0.0}; //Array to host inputs
double y[10] = {0.0}; 

double a1[10]; // layer 1 output array
double a2[10]; // layer 2 output array
double a3[10]; // layer 3 output array


double dummyloss[10] = {0.0};
double a1Loss[10] = {0.0};
double a2Loss[10] = {0.0};
double a3Loss[10] = {0.0};


double loss[10] = {0.0}; // Array to host the loss function of //each output

int i;
int k;
int indx;
int j;

double L;

double Lr;
int Ndense;
// - E n d   o f   S T A T I C :   S e c t i o n -   

RAM_FUNCTIONS:

// -----------------------------------------------   
// This section should contain any 'c' functions     
// to be called from the RAM section (either         
// RAM_PASS1 or RAM_PASS2). Example:                 
//                                                   
// static double myFunction(double v1, double v2)    
// {                                                 
//     return(v1*v2);                                
// }                                                 
// -----------------------------------------------   

RAM:
//n = numInputs + numOutputs;
N = numInputs;
Y = numOutputs;

N1 = Nodes1;
N2 = Nodes2;
N3 = Nodes3;



if (Layers == 1){

Ndense = N1;

}

else if (Layers == 2){

Ndense = N2;
}

else{
Ndense = N3;
}

// -----------------------------------------------   
// Place C code here which computes constants        
// required for the CODE: section below.  The C      
// code here is executed once, prior to the start    
// of the simulation case.                           
// -----------------------------------------------   
//    dt= getTimeStep();                             


// ------------- End of RAM: Section -------------   




CODE_FUNCTIONS:

static void LoadX(int N){ // This function loads the input array

X[0] = x1;
if (N>1){
	X[1] = x2;
	if (N>2){
		X[2] = x3;
		if (N>3){
			X[3] = x4;
			if (N>4){
				X[4] = x5;
				if (N>5){
					X[5] = x6;
					if (N>6){
						X[6] = x7;
						if (N>7){
							X[7] = x8;
							if (N>8){
								X[8] = x9;
								if (N>9){
								X[9] = x10;

								}
							}

						}
					}
				}
			}
		}
	}
}
}



//The following function is the feedforward operation (predict)

static void ANNLayer(int N, int Y, double X[10], double a[10], double W[100], double b[10]){

for (k = 0; k<Y; k++){
i = N*k;
//a[k] = 0;

for (j = 0; j<N; j++){

	a[k] +=W[j+i] * X[j];

}

a[k] += b[k];

}
}

static void DenseLayer(int N, int Y, double X[10], double W[100], double b[10]){

for (k = 0; k<Y; k++){
i = N*k;
y[k] = W[0+i] * X[0]+ W[1+i]*X[1] + W[2+i]*X[2] +W[3+i]*X[3] + W[4+i] * X[4]+ W[5+i]*X[5] + W[6+i]*X[6] + W[7+i]*X[7] +W[8+i]*X[8] +W[9+i]*X[9] + b[k]; 
}
}


static void FeedForward(){

ANNLayer(N, N1,X, a1, W1, b1);
//testout = a1[2];
if (Layers > 1){

	ANNLayer(N1, N2, a1, a2, W2, b2);

	if (Layers > 2){
		ANNLayer(N2, N3, a2, a3, W3, b3);
		DenseLayer(Ndense, Y,a3, Wdense, bdense);
	}

	else{
		DenseLayer(Ndense, Y,a2, Wdense, bdense);
	}

}
else{
	DenseLayer(Ndense, Y,a1, Wdense, bdense);
	}
}


static void LoadL(int Y){
loss[0] = L1;
if (Y>1){
	loss[1] = L2;
	if (Y>2){
		loss[2] = L3;
		if (Y>3){
			loss[3] = L4;
			if (Y>4){
				loss[4] = L5;
				if (Y>5){
					loss[5] = L6;
					if (Y>6){
						loss[6] = L7;
						if (Y>7){
							loss[7] = L8;
							if (Y>8){
								loss[8] = L9;
								if (Y>9){
								 loss[9] =L10; 

								}
							}
						}
					}
				}
			}
		}
	}
	
}
}


static void ResetNodes(numLayers){
if (numLayers==1){
	for (i = 0; i<N1; i++){
		a1[i] = 0.0;
	}
}

	else if (numLayers==2){
	for (i = 0; i<10; i++){
		a2[i] = 0.0;
		a1[i] = 0.0;

	}
	}

	else{

	for (i = 0; i<10; i++){
		a3[i] = 0.0;
		a2[i] = 0.0;
		a1[i] = 0.0;
	}
	}

}



static void ResetLosses(numLayers){

if (numLayers==1){
	for (i = 0; i<N1; i++){
		a1Loss[i] = 0.0;
		dummyloss[i] = 0.0;
	}
}

	else if (numLayers==2){
	for (i = 0; i<10; i++){
		a2Loss[i] = 0.0;
		a1Loss[i] = 0.0;
		dummyloss[i] = 0.0;
	}
	}

	else{

	for (i = 0; i<10; i++){
		a3Loss[i] = 0.0;
		a2Loss[i] = 0.0;
		a1Loss[i] = 0.0;
		dummyloss[i] = 0.0;
	}
	}

}


static void Backprop(double Loss[10], int N, int Y, double alpha, double A[10], double W[100], double b[10], double lossback[10]){
//alpha = Learning_rate;	
for (k = 0; k<Y; k++){
	L = Loss[k];
	//b[k] = b[k] - L*alpha;
	b[k] -= L*alpha;
	testout = alpha;
	for (i = 0; i<N; i++){ 
		W[N*k+i] = W[N*k+i] - L* alpha* A[i];
		lossback[i] += L * W[N*k+i];
	}
}

}





static void Training(numLayers){
	Lr = Learning_rate;

if (numLayers==1){
		
		Backprop(loss, N1, Y, Lr, a1, Wdense, bdense, a1Loss);
		
	Backprop(a1Loss, N, N1, Lr, X, W1, b1, dummyloss);
	//testout = a1[2];
}

	else if (numLayers==2){
		Backprop(loss, N2, Y, Lr, a2, Wdense, bdense, a2Loss);
		Backprop(a2Loss, N1, N2, Lr, a1, W2, b2, a1Loss);
		Backprop(a1Loss, N, N1, Lr, a1, W1, b1, dummyloss);
	}

	else{

		Backprop(loss, N3, Y, Lr,a3, Wdense, bdense, a3Loss);
		Backprop(a3Loss, N2, N3, Lr,a2, W3, b3, a2Loss);
		Backprop(a2Loss, N1, N2, Lr,a1, W2, b2, a1Loss);
		Backprop(a1Loss, N, N1, Lr,X, W1, b1, dummyloss);
	}

	//ResetLosses(numLayers);

}




CODE:


LoadX(N);

FeedForward();

foutput = y[0];
foutput2 = y[1];
foutput3 = y[2];
foutput4 = y[3];
foutput5 = y[4];
foutput6 = y[5];
foutput7 = y[6];
foutput8 = y[7];
foutput9 = y[8];
foutput10 = y[9];



if (Learning_rate>0.0){

	LoadL(Y);
	
	Training(Layers);

}


//testout = bdense[0];

tests = testout;

ResetLosses(Layers);

ResetNodes(Layers);
// -----------------------------------------------   
// Place C code here which runs on the RTDS. The     
// code below is entered once each simulation        
// step.                                             
// -----------------------------------------------   


// ------------ End of CODE: Section -------------   
