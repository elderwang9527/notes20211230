### matplotlib plot 出两个不同的 df 列，使用各自适合的 y 轴单位。使用 figsize 设置图片大小。画出一条横线。

```
import matplotlib.pyplot as plt

fig, ax1 = plt.subplots(figsize=(20,12))

# plot the 'close' column on the first y-axis
ax1.plot(df.index, df['close'], color='blue')
ax1.set_ylabel('Price (USD)', color='blue')

# create a second y-axis that shares the same x-axis
ax2 = ax1.twinx()

# plot the 'rsi' column on the second y-axis
ax2.plot(df.index, df['rsi'], color='red')
ax2.set_ylabel('RSI', color='red')

# set the title and x-axis label
ax1.set_title('Price and RSI')
ax1.set_xlabel('Date')

# display the plot
plt.show()

```
