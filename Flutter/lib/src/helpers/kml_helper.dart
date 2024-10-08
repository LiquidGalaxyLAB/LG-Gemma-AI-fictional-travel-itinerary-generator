class KmlHelper {
  static screenOverlayImage(String imageUrl, double factor) =>
      '''<?xml version='1.0' encoding='UTF-8'?>
<kml xmlns='http://www.opengis.net/kml/2.2' xmlns:gx='http://www.google.com/kml/ext/2.2' xmlns:kml='http://www.opengis.net/kml/2.2' xmlns:atom='http://www.w3.org/2005/Atom'>
    <Document id ='logo'>
         <name>Smart City Dashboard</name>
             <Folder>
                  <name>Splash Screen</name>
                  <ScreenOverlay>
                      <name>logo</name>
                      <Icon><href>$imageUrl</href> </Icon>
                      <overlayXY x='0.5' y='0.85' xunits='fraction' yunits='fraction'/>
                      <screenXY x='0.5' y='0.85' xunits='fraction' yunits='fraction'/>
                      <rotationXY x='0' y='0' xunits='fraction' yunits='fraction'/>
                      <size x='1000' y='${1000 * factor}' xunits='pixels' yunits='pixels'/>
                  </ScreenOverlay>
             </Folder>
    </Document>
</kml>
''';
  static screenOverlayImageWithStory(String imageUrl, String story, String long, String lat, double factor) =>
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
    <div style='width:600px;justify-content: center;padding:5px;display:flex;flex-direction:column;'>
    
<img style='object-fit:cover;width:600;height:600' src="$imageUrl">
<br>
    <div style='font-size: 20'>$story</div>
    </div>

  ]]>
    </description>
    <gx:balloonVisibility>1</gx:balloonVisibility>
    <Point>
      <coordinates>$long,$lat</coordinates>
    </Point>
  </Placemark>

             </Folder> 
    </Document>
</kml>
''';

  static screenOverlayImageWithStory2(String imageUrl, String story, String long, String lat, double factor) =>
      '''<?xml version="1.0" encoding="UTF-8"?> 
<kml xmlns="http://www.opengis.net/kml/2.2" xmlns:gx="http://www.google.com/kml/ext/2.2" xmlns:kml="http://www.opengis.net/kml/2.2" xmlns:atom="http://www.w3.org/2005/Atom">
  <Document> 
    <name>historic.kml</name>
    <ScreenOverlay>
      <name><![CDATA[<div style="text-align: center; font-size: 20px; font-weight: bold; vertical-align: middle;">Nearby Places</div>]]></name>
      <description><![CDATA[
        <html>
          <body>
          <div style="height:300px;width:300px;background-image: url("$imageUrl");background-size: cover;">
          </div>
          <div>
Hello guys it's me $story
          </div>
          </body>
        </html>
      ]]></description>
      <overlayXY x="0" y="1" xunits="fraction" yunits="fraction"/>
      <screenXY x="1" y="1" xunits="fraction" yunits="fraction"/>
      <rotationXY x="0" y="0" xunits="fraction" yunits="fraction"/>
      <size x="0" y="0" xunits="fraction" yunits="fraction"/>
      <gx:balloonVisibility>1</gx:balloonVisibility>
    </ScreenOverlay>
  </Document>
</kml>
''';


  static tourKML()=>
      '''<?xml version='1.0' encoding='UTF-8'?>
<kml xmlns='http://www.opengis.net/kml/2.2'
 xmlns:gx='http://www.google.com/kml/ext/2.2'>

<Document>
  <name>A tour and some features</name>
  <open>1</open>

  <gx:Tour>
    <name>Touring</name>
    <gx:Playlist>

      <gx:FlyTo>
        <gx:duration>5.0</gx:duration>
        <!-- bounce is the default flyToMode -->
        <Camera>
          <longitude>170.157</longitude>
          <latitude>-43.671</latitude>
          <altitude>9700</altitude>
          <heading>-6.333</heading>
          <tilt>33.5</tilt>
        </Camera>
      </gx:FlyTo>

      <gx:Wait>
        <gx:duration>1.0</gx:duration>
      </gx:Wait>

      <gx:FlyTo>
        <gx:duration>6.0</gx:duration>
        <Camera>
          <longitude>174.063</longitude>
          <latitude>-39.663</latitude>
          <altitude>18275</altitude>
          <heading>-4.921</heading>
          <tilt>65</tilt>
          <altitudeMode>absolute</altitudeMode>
        </Camera>
      </gx:FlyTo>

      <gx:FlyTo>
        <gx:duration>3.0</gx:duration>
        <gx:flyToMode>smooth</gx:flyToMode>
        <LookAt>
          <longitude>174.007</longitude>
          <latitude>-39.279</latitude>
          <altitude>0</altitude>
          <heading>112.817</heading>
          <tilt>68.065</tilt>
          <range>6811.884</range>
          <altitudeMode>relativeToGround</altitudeMode>
        </LookAt>
      </gx:FlyTo>

      <gx:FlyTo>
        <gx:duration>3.0</gx:duration>
        <gx:flyToMode>smooth</gx:flyToMode>
        <LookAt>
          <longitude>174.064</longitude>
          <latitude>-39.321</latitude>
          <altitude>0</altitude>
          <heading>-48.463</heading>
          <tilt>67.946</tilt>
          <range>4202.579</range>
          <altitudeMode>relativeToGround</altitudeMode>
        </LookAt>
       </gx:FlyTo>

      <gx:FlyTo>
        <gx:duration>5.0</gx:duration>
        <LookAt>
          <longitude>175.365</longitude>
          <latitude>-36.523</latitude>
          <altitude>0</altitude>
          <heading>-95</heading>
          <tilt>65</tilt>
          <range>2500</range>
          <altitudeMode>relativeToGround</altitudeMode>
        </LookAt>
      </gx:FlyTo>

      <gx:AnimatedUpdate>
        <gx:duration>0.0</gx:duration>
        <Update>
          <targetHref/>
          <Change>
            <Placemark targetId='pin2'>
              <gx:balloonVisibility>1</gx:balloonVisibility>
            </Placemark>
          </Change>
        </Update>
      </gx:AnimatedUpdate>

      <gx:Wait>
        <gx:duration>6.0</gx:duration>
      </gx:Wait>

    </gx:Playlist>
  </gx:Tour>

  <Folder>
    <name>Points and polygons</name>

    <Style id='pushpin'>
      <IconStyle>
        <Icon>
          <href>http://maps.google.com/mapfiles/kml/pushpin/ylw-pushpin.png</href>
        </Icon>
      </IconStyle>
    </Style>

    <Placemark id='mountainpin1'>
      <name>New Zealand's Southern Alps</name>
      <styleUrl>#pushpin</styleUrl>
      <Point>
        <coordinates>170.144,-43.605,0</coordinates>
      </Point>
    </Placemark>

    <Placemark id='pin2'>
      <name>The End</name>
      <description>
        Learn more at http://developers.google.com/kml/documentation
      </description>
      <styleUrl>pushpin</styleUrl>
      <Point>
        <coordinates>175.370,-36.526,0</coordinates>
      </Point>
    </Placemark>

    <Placemark id='polygon1'>
      <name>Polygon</name>
      <Polygon>
        <tessellate>1</tessellate>
        <outerBoundaryIs>
          <LinearRing>
            <coordinates>
              175.365,-36.522,0
              175.366,-36.530,0
              175.369,-36.529,0
              175.366,-36.521,0
              175.365,-36.522,0
            </coordinates>
          </LinearRing>
        </outerBoundaryIs>
      </Polygon>
    </Placemark>

  </Folder>
</Document>
</kml>'''
      ;
  static String lookAtLinear(double latitude, double longitude, double zoom,
          double tilt, double bearing) =>
      '<LookAt><longitude>$longitude</longitude><latitude>$latitude</latitude><range>$zoom</range><tilt>60</tilt><heading>$bearing</heading><gx:altitudeMode>relativeToGround</gx:altitudeMode></LookAt>';

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
