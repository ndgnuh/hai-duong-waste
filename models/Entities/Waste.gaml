/**
* Name: EnvironmentComponent
* Based on the internal skeleton template. 
* Author: hung
* Tags: 
*/

model EnvironmentComponent




species WasteWater {
	float pH;
	float BOD;
	float COD;
	float TSS;
	float TN;
	float TP;
	float ion_NH4_N; /* NH4+ -N */
	float KLN;
	float Colifrom;
}

species SurfaceWater {
	float pH;
	float DO;
	float purity;
	float temperature; /* T^\circ? */
	float TSS;
	float COD;
	float BOD;
	float ion_NH4_N; /* NH4+ -N */
	float ion_NO3_N; /* NO3- -N */
	float ion_PO43_P; /* PO43- -P */
	float Coliform;
}

species GroundWater {
	float pH;
	float COD; /* chỉ số Pemanganat */
	float OPR;
	float TSS;
	float ion_NH4_N; /* NH4+ -N */
	float ion_NO3_N; /* NO3- -N */
	float ion_PO43_P; /* PO43- -P */
	float Colifrom;
	float KLN;
}

species Air {
	float temperature; /* Nhiệt độ */ 
	float wind_speed; /* vận tốc  */
	string wind_direction; /* hướng gió */
	float dust; /* Bụi tổng số */
	float NH3;
	float H2S;
	float SO2;
	float CO;
	float NO2;
}

species Dirt{
	float pH;
	float OC;
	float KLN;
}