import pandas as pd
import numpy as np
from StringIO import StringIO
import matplotlib.pyplot as plt
import json

# -----------Prepare Data----------
with open('radar_plot/radar_data.json') as data_file:
    data = json.load(data_file)

angular_df = pd.DataFrame(data["angular"])
angular_df = angular_df.T.reset_index().reindex(columns=['index', 0])

react_df = pd.DataFrame(data["react"])
react_df = react_df.T.reset_index().reindex(columns=['index', 0])

aurelia_df = pd.DataFrame(data["aurelia"])
aurelia_df = aurelia_df.T.reset_index().reindex(columns=['index', 0])
# -----------------------------------

fig = plt.figure()
# --------------------------------------
# ----------------Angular---------------
ax = fig.add_subplot(131, projection="polar")

theta = np.arange(len(angular_df))/float(len(angular_df))*2.*np.pi
l2, = ax.plot(theta, angular_df[0], color="r", lw=0.9, label="Angular")
ax.fill(theta, angular_df[0], facecolor="r", alpha=0.25, label="")

def _closeline(line):
    x, y = line.get_data()
    x = np.concatenate((x, [x[0]]))
    y = np.concatenate((y, [y[0]]))
    line.set_data(x, y)
[_closeline(l) for l in [l2]]

ax.set_xticks(theta)
ax.set_xticklabels(angular_df.index)
plt.legend()
# --------------------------------------
# ----------------React-----------------
ax1 = fig.add_subplot(132, projection="polar")

theta = np.arange(len(react_df[0]))/float(len(react_df[0]))*2.*np.pi
l1, = ax1.plot(theta, react_df[0], color="b", lw=0.9, label="React")
ax1.fill(theta, react_df[0], facecolor="b", alpha=0.25, label="")
[_closeline(l) for l in [l1]]

ax1.set_xticks(theta)
ax1.set_xticklabels(react_df.index)
plt.legend()
# plt.title("How often have people votes Yes or No?")
# --------------------------------------
# ----------------Aurelia---------------
ax2 = fig.add_subplot(133, projection="polar")

theta = np.arange(len(aurelia_df))/float(len(aurelia_df))*2.*np.pi
l3, = ax2.plot(theta, aurelia_df[0], color="m", lw=0.9, label="Aurelia")
ax2.fill(theta, aurelia_df[0], facecolor="m", alpha=0.25, label="")
[_closeline(l) for l in [l3]]

ax2.set_xticks(theta)
ax2.set_xticklabels(aurelia_df.index)
plt.legend()
# --------------------------------------
fig.subplots_adjust(wspace=0.25, hspace=0.20, top=0.85, bottom=0.05)
plt.show()
