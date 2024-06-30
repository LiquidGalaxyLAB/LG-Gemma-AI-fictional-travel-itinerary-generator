class KmlHelper {
  static screenOverlayImage(String imageUrl, double factor) =>
      '''<?xml version='1.0' encoding='UTF-8'?>
<kml xmlns='http://www.opengis.net/kml/2.2' xmlns:gx='http://www.google.com/kml/ext/2.2' xmlns:kml='http://www.opengis.net/kml/2.2' xmlns:atom='http://www.w3.org/2005/Atom'>
    <Document id ='logo'>
         <name>Smart City Dashboard</name>
             <Folder>
                  <name>Splash Screen</name>
                  <ScreenOverlay>
                      <name>Logo</name>
                      <Icon><href>$imageUrl</href> </Icon>
                      <overlayXY x='0' y='1' xunits='fraction' yunits='fraction'/>
                      <screenXY x='0.025' y='0.95' xunits='fraction' yunits='fraction'/>
                      <rotationXY x='0' y='0' xunits='fraction' yunits='fraction'/>
                      <size x='300' y='${300 * factor}' xunits='pixels' yunits='pixels'/>
                  </ScreenOverlay>
             </Folder>
    </Document>
</kml>
''';
  static screenOverlayImageWithStory(String imageUrl, String story,double factor) =>
      '''<?xml version='1.0' encoding='UTF-8'?>
<kml xmlns='http://www.opengis.net/kml/2.2' xmlns:gx='http://www.google.com/kml/ext/2.2' xmlns:kml='http://www.opengis.net/kml/2.2' xmlns:atom='http://www.w3.org/2005/Atom'>
    <Document id ='logo'>
         <name>Screen overlay</name>
             <Folder>
                  <name>Something Else</name>
                  <Placemark>
    <name>Traveller's Story</name>
    <description>
    <![CDATA[
    <div style='width:300px;justify-content: center;padding:5px;display:flex;flex-direction:column;'>
    
<img style='object-fit:cover;width:300;height:300' src="$imageUrl">
    <div>$story</div>
    </div>

  ]]>
    </description>
    <gx:balloonVisibility>1</gx:balloonVisibility>
    <Point>
      <coordinates>22.294785,48.858093,0</coordinates>
    </Point>
  </Placemark>

             </Folder> 
    </Document>
</kml>
''';
  static String lookAtLinear(double latitude, double longitude, double zoom,
          double tilt, double bearing) =>
      '<LookAt><longitude>$longitude</longitude><latitude>$latitude</latitude><range>$zoom</range><tilt>$tilt</tilt><heading>$bearing</heading><gx:altitudeMode>relativeToGround</gx:altitudeMode></LookAt>';

  static String orbitLookAtLinear(double latitude, double longitude,
          double zoom, double tilt, double bearing) =>
      '<gx:duration>2</gx:duration><gx:flyToMode>smooth</gx:flyToMode><LookAt><longitude>$longitude</longitude><latitude>$latitude</latitude><range>$zoom</range><tilt>$tilt</tilt><heading>$bearing</heading><gx:altitudeMode>relativeToGround</gx:altitudeMode></LookAt>';

  static String lookAtLinearInstant(double latitude, double longitude,
          double zoom, double tilt, double bearing) =>
      '<gx:duration>0.5</gx:duration><gx:flyToMode>smooth</gx:flyToMode><LookAt><longitude>$longitude</longitude><latitude>$latitude</latitude><range>$zoom</range><tilt>$tilt</tilt><heading>$bearing</heading><gx:altitudeMode>relativeToGround</gx:altitudeMode></LookAt>';

  static String getSlaveDefaultKml(int slaveNo) =>
      '''<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2" xmlns:gx="http://www.google.com/kml/ext/2.2" xmlns:kml="http://www.opengis.net/kml/2.2" xmlns:atom="http://www.w3.org/2005/Atom">
<Document id="slave_$slaveNo">
</Document>
</kml>
''';
}
