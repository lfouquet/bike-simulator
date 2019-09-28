using Toybox.Graphics;
using Toybox.WatchUi;
using Toybox.System;


class TrackPickerDelegate extends OwnPickerDelegate {

    function initialize(pickerFactory,index) {
        OwnPickerDelegate.initialize(pickerFactory,index);
    }

    
    function onAccept(value) {
    	Properties.storeActiveTrack(DataTracks.getIndex(value.name));
    	WatchUi.popView(WatchUi.SLIDE_IMMEDIATE);
    }
}
