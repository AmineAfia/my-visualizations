import pandas as pd
import matplotlib.pyplot as plt
import json
import datetime
import matplotlib.dates as mdates


years = mdates.YearLocator()   # every year
months = mdates.MonthLocator()  # every month
yearsFmt = mdates.DateFormatter('%Y')
# ----------------Data formating-------------------------
with open('forks_plot/forks.json') as data_file:
    data = json.load(data_file)

angular_df = pd.DataFrame(data["angular"])
angular_df["date"]  = pd.to_datetime(angular_df["date"])

react_df = pd.DataFrame(data["react"])
react_df["date"]  = pd.to_datetime(react_df["date"])

aurelia_df = pd.DataFrame(data["aurelia"])
aurelia_df["date"]  = pd.to_datetime(aurelia_df["date"])
# ------------------------------------------------------------

# ------------------------Angular---------------------------
plt.figure(1)
plt.subplot(111)
plt.figure(1).autofmt_xdate()
plt.ylabel('forks')
plt.xlabel('date')
plt.plot_date(angular_df["date"], angular_df["value"], 'r', linestyle='-', label="Angular")
# ------------------------------------------------------------

# -----------------------React----------------------------
plt.figure(1)
plt.subplot(111)
plt.figure(1).autofmt_xdate()
plt.plot_date(react_df["date"], react_df["value"], '#5A9CC4', linestyle='-', label="React")
# ------------------------------------------------------------

# ----------------------Aurelia------------------------------
plt.figure(1)
plt.subplot(111)
plt.figure(1).autofmt_xdate()
plt.title('Forks aggragation over time')
plt.plot_date(aurelia_df["date"], aurelia_df["value"], '#D075D4', linestyle='-', label="Aurelia")
# ------------------------------------------------------------

# format the ticks
plt.subplot(111).xaxis.set_major_locator(years)
plt.subplot(111).xaxis.set_major_formatter(yearsFmt)
plt.subplot(111).xaxis.set_minor_locator(months)

# format the coords message box
def price(x):
    return '$%1.2f' % x
plt.subplot(111).format_xdata = mdates.DateFormatter('%Y-%m-%d')
plt.subplot(111).format_ydata = price
plt.subplot(111).grid(True)
plt.figure(1).autofmt_xdate()
plt.legend(bbox_to_anchor=(0.10, 0.90), loc=2, borderaxespad=0.)

plt.show()
