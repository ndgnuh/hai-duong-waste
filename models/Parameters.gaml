/**
* Name: Parameters
* Model parameters base on national standards.
* Author: hung
* Tags: 
* TODO: Add support for scenario with preconfigured parameters. 
*/


model Parameters

/* Insert your model definition here */

global {
	/* From QCVN03-MT:2015/BTNMT
	 * Residental use case
	 * Unit: mg/km
	 */
	float dirt_permitted_As <- 15.0;
	float dirt_permitted_Cd <- 2.0;
	float dirt_permitted_Pb <- 70.0;
	float dirt_permitted_Cr <- 200.0;
	float dirt_permitted_Cu <- 100.0;
	float dirt_permitted_Zn <- 200.0;
	
	/* From QCVN05: 2013/BTNM and QCVN06:2009/BTNMT
	 * Hourly mean bound are applied
	 * Unit: micro gram/m^3 
	 */
	float air_permitted_SO2 <- 350.0;
	float air_permitted_CO <- 30000.0;
	float air_permitted_NO2 <- 200.0;
	float air_permitted_O3 <- 200.0;
	float air_permitted_TSP <- 300.0;
	float air_permitted_NH3 <- 200.0;
	float air_permitted_H2S <- 42.0;
	
	/* From QCVN08-MT:2015/BTNM 
	 * Currently based on A1 case
	 * Unit: mg/l (except for pH-none and Coliform-MPN or CFU/100ml)
	 */
	float surfacewater_min_pH <- 6.0;
	float surfacewater_max_pH <- 8.5;
	float surfacewater_min_DO <- 6.0; 
	float surfacewater_max_TSS <- 20.0;
	float surfacewater_max_COD <- 10.0;
	float surfacewater_max_BOD <- 4.0;
	float surfacewater_max_ion_NH4_N <- 0.3; /* NH4+ -N */
	float surfacewater_max_ion_NO3_N <- 2.0; /* NO3- -N */
	float surfacewater_max_ion_PO43_P <- 0.1; /* PO43- -P */
	float surfacewater_max_Coliform <- 2500.0;
	
	/* From  QCVN09-MT:2015/BTNMT 
	 * Unit: mg/l (except for pH-none and Coliform-MPN or CFU/100ml)
	 * Regulation for OPR and TSS is missing?
	 */
	float groundwater_min_pH <- 5.5;
	float groundwater_max_pH <- 8.5;
	float groundwater_max_COD <- 4.0; /* chỉ số Pemanganat */
	float groundwater_max_OPR;
	float groundwater_max_TSS;
	float groundwater_max_ion_NH4_N <- 1.0; /* NH4+ -N */
	float groundwater_max_ion_NO3_N <- 15.0; /* NO3- -N */
	float groundwater_max_ion_PO43_P; /* PO43- -P */
	float groundwater_max_Colifrom <- 3.0;
	float groundwater_max_Cu <- 1.0;
	float groundwater_max_Pb <- 0.01;
	float groundwater_max_Zn <- 3.0;
	float groundwater_max_Cd <- 0.005;
	
	/* From QCVN25:2009/BTNMT and "QCVN 24: 2009/BTNMT"
	 * Use case A: residental
	 * Unit: mg/l  (except for pH-none and Coliform-MPN or CFU/100ml)
	 * TODO: Some is missing.
	 */
	float wastewater_max_pH <- 9.0;
	float wastewater_min_pH <- 6.0;
	float wastewater_max_temperature <- 40.0;
	float wastewater_max_BOD <- 30.0;
	float wastewater_max_COD <- 50.0;
	float wastewater_max_TSS;
	float wastewater_max_TN;
	float wastewater_max_TP;
	float wastewater_max_ion_NH4_N <- 5.0; /* NH4+ -N */
	float wastewater_max_Cu <- 2.0;
	float wastewater_max_Pb <- 0.1;
	float wastewater_max_Zn <- 3.0;
	float wastewater_max_Cd <- 0.005;
	float wastewater_max_Colifrom <- 3000.0;

	 
}