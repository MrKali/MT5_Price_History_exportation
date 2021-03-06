# MT5 Price History exportation

Export price history of indices, currencies, stocks and more from MT5 server for external usage

<img src="https://raw.githubusercontent.com/MrKali/MT5_Price_History_exportation/main/resources/Script.PNG?token=AIKIEFALJ55BHU4P5OHEUTLA5ISRQ">

Installation
------------
1. Clone this repo or download as zip file
2. Copy the content into 'Scripts' folder inside your MT5 data folder (MT5 -> File -> Open Data Folder)
3. Restart your MT5 platform

Usage
------------
1. Drag the script into the symbol chart you want to export the price history
2. Modify the inputs according to your needs
3. Get the CSV file inside 'files' folder of MT5 data folder (MT5 -> File -> Open Data Folder)

|               Input                       |                               Description                            |
| ----------------------------------------- | -------------------------------------------------------------------- |
|  Timeframe                                |  Selected timeframe to export price history data                     |
|  Filename                                 |  Name of csv file with the data                                      |
|  Start date                               |  First date start to retrieve price history                          |
|  End date                                 |  End date to stop retrieve price history                             |
|  Export open price                        |  If true will export open price                                      |
|  Export close price                       |  If true will export close price                                     |
|  Export high price                        |  If true will export high price                                      |
|  Export low price                         |  If true will export low price                                       |

Features
--------
* Fast and reliable exportation of price history data
* Allow multiple time frames
* Works with stocks, indices, currencies, crypto, bonds and commodities
