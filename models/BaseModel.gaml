/**
* Name: Play
* Based on the internal skeleton template. 
* Author: hung
* Tags: 
*/
model Play

import "Entities/Building.gaml"
import "Entities/Waste.gaml" 

global {
    float step <- 1 #hour;
    graph water_network;
    file waterways_shapefile <- file("../includes/waterway.shp");
    
    file buildings_shapefile <- file("../includes/buildings.shp");
    file boundary_shapefile <- file("../includes/boundary.shp");
    geometry shape <- envelope(boundary_shapefile);    
    
    init{
    	create boundary from: boundary_shapefile;
        create waterway from: waterways_shapefile;
        water_network <- as_edge_graph(waterway);
        create building from: buildings_shapefile;
        create waste number: 200{
        	location <- any_location_in(one_of(waterway));
        }
    }
}


species waste skills: [moving] {
	point target;
	
	reflex stay when: target = nil {
		target <- any_location_in(one_of(waterway));
	}
	
	reflex move when: target != nil {
	    do goto target: target on: water_network;
	    if (location = target) {
	    	target <- nil;
	    } 
	}
	
	aspect base {
		draw circle(500#m) color: #red;
	}
}

species boundary {
	aspect geom {
		draw shape color: #white border: #black;
	}
}


species waterway {
    aspect geom {
        draw shape color: #blue width: 2;
    }
}


experiment main type: gui {
    output {
        display map {
        	species boundary aspect: geom;
            species waterway aspect: geom;
            species building aspect: geom;      
            species waste aspect: base;     
        }
        
    }
}
