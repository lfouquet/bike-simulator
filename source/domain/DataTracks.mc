using Toybox.Application;

module DataTracks{

	var profile1 	= [4,5,0,5 ,4 ,5 ,2 ,3 ,6 ,4 ,6	,3 ,10,11,9	,10,7 ,5 ,10 ,4];
	var profile2 	= [0,1,3,0,0,-2,-1,-1,0,1,1,1,-2,0,0,0,0,0,4,5,0,5 ,4 ,5 ,2 ,3, 6, 4,-4,-6 ,-3,-3,-5,-4,0 ,-5,-4,
						0,0,0,0,6, 3 ,10,11,9 ,10,7 ,5,10 ,4 ,-4,-10,-5,-7,-10,-9,-11,-10,-3,-6,0];
	var profile3	= [0,0,2,2,2,1,0,0,5,0,-3,3,-2,5,5,6,-6,-5,-5,2,-3,3,0,10,7,-7,2,4,3,2,5,5,2,5,6,7,6,6,6,7,5,-5,
						-7,-6,-6,-6,-7];
	var profile4	=	[2,0,6,7,7,5,6,6,5,7,2,4,4,-10,-7,-7,-6,-9,-7,-6,-7,-6,-4,
						0,1,6,5,1,0,2,7,7,7,8,-5,-6,-7,-5,-4,-1,-5,-1,-1,-1,-1,-1,-2,-3,
						2,2,2,1,1,3,1,0,0,0,1,-1
						];
						
	var Tracks = [	new Track("Covatilla",profile1),
					new Track("Track 2",profile2),
					new Track("Medium",profile3),
					new Track("Madrid 1",profile4)
				 ];
	
	function getIndex(value) {
        for(var i = 0; i < Tracks.size(); ++i) {
        	if(Tracks[i].name.equals(value)){
        		return i;
        	}
        }
        return 0;
    }
    
    function getActiveTrack(){
    	return Tracks[Properties.activeTrack()];
    }
}	