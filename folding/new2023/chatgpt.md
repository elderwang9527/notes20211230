## 230215

#### 这个答案绘制了四个图形，但我只想要一个图形。只是此图形的 Open, High, Low, Close 使用相同的 x 轴和 y 轴。但 Volume 使用不同单位的 y 轴，好让它们都比较明显的出现在图形中

非常抱歉，我误解了你的问题。如果你只需要一个图形来展示 Open、High、Low、Close 和 Volume 五个变量，并且 Open、High、Low、Close 和 Volume 使用不同的单位和刻度，可以通过以下代码实现：

```
import matplotlib.pyplot as plt

# 设置图形大小
plt.figure(figsize=(12, 8))

# 绘制 Open、High、Low、Close
plt.plot(df.index, df['open'], label='Open')
plt.plot(df.index, df['high'], label='High')
plt.plot(df.index, df['low'], label='Low')
plt.plot(df.index, df['close'], label='Close')

# 设置 y 轴刻度
plt.gca().set_ylim(bottom=df['low'].min() - 0.1 * df['low'].max(), top=df['high'].max() + 0.1 * df['high'].max())

# 绘制 Volume
ax2 = plt.gca().twinx()
ax2.fill_between(df.index, 0, df['volume'], facecolor='gray', alpha=0.5, label='Volume')
ax2.set_ylim(bottom=0, top=df['volume'].max() + 0.1 * df['volume'].max())

# 设置图例和标题
plt.legend()
plt.title('Stock Price and Volume')

# 显示图形
plt.show()

```

在这个代码中，我们首先设置了图形的大小，然后使用 plt.plot() 函数分别绘制 Open、High、Low、Close 四列数据，并使用 label 参数设置图例标签。

接着，我们使用 plt.gca() 函数获取当前的 Axes 对象，并使用 set_ylim() 函数设置 y 轴刻度，使得它们适合 Open、High、Low、Close 四列数据。

然后，我们使用 plt.gca().twinx() 函数创建一个新的 Axes 对象，并使用 fill_between() 函数绘制 Volume 列的面积图，并使用 alpha 参数设置颜色透明度，使其更清晰地出现在图形中。同时，我们也使用 set_ylim() 函数设置 y 轴刻度，使其适合 Volume 列数据。

最后，我们使用 plt.legend() 函数添加图例，并使用 plt.title() 函数设置图形的标题。最终使用 plt.show() 函数显示图形。

这样，你就可以在同一个图形中同时展示 Open、High、Low、Close 和 Volume 五个变量，并使用不同的单位和刻度。
