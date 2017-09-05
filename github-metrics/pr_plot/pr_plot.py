import pandas as pd
import matplotlib.pyplot as plt
import json
import datetime
import matplotlib.dates as mdates

years = mdates.YearLocator()   # every year
months = mdates.MonthLocator()  # every month
yearsFmt = mdates.DateFormatter('%Y')

# ----------------------Data formating------------------------------
with open('pr_plot/prs_2.json') as data_file:  # load json file
    data = json.load(data_file)

angular_df = pd.DataFrame(data["angular"])
angular_df["date"] = pd.to_datetime(sorted(angular_df["date"]))

# Delete half the table for less condance plot
for i in range(0, len(angular_df["date"]), 2):
    del angular_df["date"][i]
    del angular_df["value"][i]

react_df = pd.DataFrame(data["react"])
react_df["date"] = pd.to_datetime(sorted(react_df["date"]))

# Delete half the table for less condance plot
for j in range(0, len(react_df["date"]), 2):
    del react_df["date"][j]
    del react_df["value"][j]

aurelia_df = pd.DataFrame(data["aurelia"])
aurelia_df["date"] = pd.to_datetime(sorted(aurelia_df["date"]))
# ------------------------------------------------------------

# ---------------------------Angular---------------------------
plt.figure(1)
plt.subplot(111)
plt.figure(1).autofmt_xdate()
plt.ylabel('pull requests')
plt.xlabel('date')
# plt.plot(angular_df["date"], angular_df["value"], color="r", label="Angular")
plt.plot_date(angular_df["date"], angular_df["value"], '-r', label="Angular", lw=0.8)
# ------------------------------------------------------------

# ---------------------------React----------------------------
plt.figure(1)
plt.subplot(111)
plt.figure(1).autofmt_xdate()
plt.plot_date(react_df["date"], react_df["value"], '-b', label="React", lw=0.8)
# ------------------------------------------------------------

# ---------------------------Aurelia--------------------------
plt.figure(1)
plt.subplot(111)
plt.figure(1).autofmt_xdate()
plt.title('pull requests aggragation over time')
# plt.plot(aurelia_df["date"], aurelia_df["value"], color="m", label="Aurelia")
plt.plot_date(aurelia_df["date"], aurelia_df["value"], '-m', label="Aurelia", lw=0.8)
# ------------------------------------------------------------

# format the ticks
plt.subplot(111).xaxis.set_major_locator(years)
plt.subplot(111).xaxis.set_major_formatter(yearsFmt)
plt.subplot(111).xaxis.set_minor_locator(months)

datemin = datetime.date(angular_df["date"].min().year, 1, 1)
datemax = datetime.date(angular_df["date"].max().year + 1, 1, 1)
plt.subplot(111).set_xlim(datemin, datemax)

# format the coords message box
def price(x):
    return '$%1.2f' % x
plt.subplot(111).format_xdata = mdates.DateFormatter('%Y-%m-%d')
plt.subplot(111).format_ydata = price
plt.subplot(111).grid(True)

plt.figure(1).autofmt_xdate()

plt.legend(bbox_to_anchor=(0.10, 0.90), loc=2, borderaxespad=0.)
plt.show()
