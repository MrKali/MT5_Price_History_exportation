//+------------------------------------------------------------------+
//|                                MT5_Price_History_exportation.mq5 |
//|                                     Copyright 2020, Pedro Varela |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property script_show_inputs
//+------------------------------------------------------------------+
//| Inputs                                                           |
//+------------------------------------------------------------------+
input ENUM_TIMEFRAMES in_timeframe = PERIOD_CURRENT;      // Timeframe
input string in_filename = "DataHistory.csv";             // Filename
input datetime in_start_date = D'2021.01.01 00:00';       // Start Date
input datetime in_end_date   = D'2021.12.31 00:00';       // End Date
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {

   string data_history = "datetime, open, high, low, close\n";
   int number_of_bars = Bars(Symbol(), in_timeframe, in_start_date, in_end_date);
   int first_bar_to_look = iBarShift(Symbol(), in_timeframe, in_end_date, false);
  
   
   for(int x = first_bar_to_look; x < number_of_bars + first_bar_to_look; x++)
     {
      data_history += GetBarInfo(x, in_timeframe) + "\n";
      
      if(x == number_of_bars + first_bar_to_look - 1)
        {
         ExportDataToCSV(in_filename, data_history);
         Alert("Data History Exported!");
        }
     }
   

  }

//+------------------------------------------------------------------+
//| Get bar date, open, high, low, close                              |
//+------------------------------------------------------------------+
string GetBarInfo(int bar_number, ENUM_TIMEFRAMES timeframe)
  {
   string date = TimeToString(iTime(Symbol(), timeframe, bar_number));
   string open = DoubleToString(iOpen(Symbol(), timeframe, bar_number));
   string high = DoubleToString(iHigh(Symbol(), timeframe, bar_number));
   string low =  DoubleToString(iLow(Symbol(), timeframe, bar_number));
   string close = DoubleToString(iClose(Symbol(), timeframe, bar_number));

   return date + ", " + open + ", " + high + ", " + low + ", " + close;
  }

//+------------------------------------------------------------------+
//| Create CSV file and save data                                    |
//+------------------------------------------------------------------+
void ExportDataToCSV(string file_name, string data_to_save)
  {
   int f = FileOpen(file_name, FILE_WRITE|FILE_READ|FILE_CSV, ",", CP_UTF8);
   FileWrite(f, data_to_save);
  }

//+------------------------------------------------------------------+
