AnalogAtPi
==========

Measure analog values with a raspberry pi and a MCP3204

## Der MCP3204

Der MCP3204 ist zum Beispiel ein ADC, der auf der einen Seite X Kanäle für den Anschluss analoger Spannungsquellen hat und auf der anderen Seite SPI unterstützt. Der Source-Code hier kommuniziert mit einem MCP3204 über die SPI-Pins der GPIO-Steckleiste des Raspberry Pi und liest so die analogen Werte aus, die ein Fotowiderstand und ein Temperatur-Sensor (TMP36GZ) liefern.

Der Aufbau ist auf meinem Blog (raspilab.wordpress.com) dargestellt. Um nicht komplett den BCM2835 auf der untersten Sohle zu programmieren, nutze ich die BCM2835 Lib (http://www.airspayce.com/mikem/bcm2835/). Diese Bibliothek muss also zunächst heruntergeladen, kompiliert und installiert werden bevor der Source-Code kompiliert werden kann. 
