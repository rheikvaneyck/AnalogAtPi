AnalogAtPi
==========

Measure analog values with a raspberry pi and a MCP3204

Analoge Messwerte lassen sich nicht direkt mit dem Raspberry Pi erfassen. Analoge Messwerte unterscheiden sich von digitalen, dass sie einen beliebigen Werte zwischen einem Minimum und einem Maximum annehmen können. Im Gegensatz dazu können die GPIO-Pins des Raspberry Pi nur feststellen, OB eine Spannung anliegt oder nicht. 

## SPI, I2C und Co

Detailliertere Messwerte versteht der Raspberry Pi nur, wenn ein entsprechendes Kommunikaitons-Protokoll verwendet wird. Der Raspberry Pi unterstützt dafür die serielle UART-Schnittstelle, das SPI-Protokoll und den I2C-Bus. Das hilft allerdings, um einen Microcontroller dazwischenzuschalten, der eines dieser Protokolle spricht und analogen Messwerte in dieser Form ausgibt. 

Um einen Spannungswert, die Lichtstärke oder eine Temperatur mit einem analogen Sensor zu messen kann also ein Analog-Digital Wandler (ADC) genutzt werden. Der hat auf der einen Seite Eingangskanäle für analoge Spannungswerte und auf der anderen Seite Anschlüsse für SPI oder den I2C-Bus. 

## Der MCP3204

Der MCP3204 ist zum Beispiel ein ADC, der auf der einen Seite X Kanäle für den Anschluss analoger Spannungsquellen hat und auf der anderen Seite SPI unterstützt. Der Source-Code hier kommuniziert mit einem MCP3204 über die SPI-Pins der GPIO-Steckleiste des Raspberry Pi und liest so die analogen Werte aus, die ein Fotowiderstand und ein Temperatur-Sensor (TMP36GZ) liefern.

Der Aufbau ist auf meinem Blog raspilab.wordpress.com dargestellt. Um nicht komplett den BCM2835 auf der untersten Sohle zu programmieren, nutze ich die BCM2835 Lib (http://www.airspayce.com/mikem/bcm2835/). Diese Bibliothek muss also zunächst heruntergeladen, kompiliert und installiert werden bevor der Source-Code kompiliert werden kann. 
