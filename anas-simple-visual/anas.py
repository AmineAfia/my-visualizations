import inspect
import json
import datetime
import matplotlib.dates as mdates
import pandas as pd
import matplotlib.pyplot as plt
from scipy.interpolate import spline
import numpy as np


# ----------------------Data formating-----------------------
with open('data.json') as data_file:
    data = json.load(data_file)
data_df = pd.DataFrame(data["plot1"])

temp = data_df["temp"]
freq = data_df["freq"]

new_temp = np.linspace(temp.min(), temp.max(), 50)  # 300 represents number of points to make between temp.min and temp.max
freq_smooth = spline(temp, freq, new_temp)
# ------------------------------------------------------------

# -----------------------Plot-------------------------------
plt.ylabel('freq')
plt.xlabel('temp')
plt.suptitle('Frequency Shift', fontsize=15)

plt.plot(new_temp, freq_smooth, color='r')
plt.plot(temp, freq, 'o', color='r')
plt.fill_between(data_df["temp"], -400, data_df["freq"], alpha=0)
plt.grid(True)
plt.xlim(xmin=14.8)

# ------------------------------------------------------------
photo_name = inspect.stack()[0][1].strip('.py') + '.png'
plt.savefig(photo_name)
plt.show()
