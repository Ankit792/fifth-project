import pandas as pd
import matplotlib.pyplot as plt

assam = pd.read_excel('assam.xlsx')
value = assam[['Date', 'State', 'TotalSamples', 'Negative', 'Positive']]
a = value.plot(x="TotalSamples", y=['Negative', 'Positive'])
plt.show()

assam = pd.read_excel('delhi.xlsx')
value = assam[['Date', 'State', 'TotalSamples', 'Negative', 'Positive']]
b = value.plot(x="TotalSamples", y=['Negative', 'Positive'])
plt.show()
