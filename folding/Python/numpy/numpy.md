## 230507 with np.errstate(over='ignore', under='ignore'):

这段代码使用了 numpy 库中的 errstate 函数来设置浮点数运算时的错误处理方式。在这里，over 和 under 参数都被设置为'ignore'，表示当计算结果超出浮点数范围时，不会抛出异常，而是返回一个无穷大或无穷小的值。这个设置通常用于避免在计算中出现 NaN 或 inf 等异常值，从而保证计算的稳定性和正确性。
