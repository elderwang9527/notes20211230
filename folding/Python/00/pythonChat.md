## 230415

### python 中，super()的作用是什么

super() 是一个内置函数，它允许您调用父类的方法。在 Python 中，当您创建一个子类时，它会继承其父类的所有方法和属性。有时，您可能需要在子类中重写父类的方法，但仍然想保留父类的实现。这就是 super() 很有用的地方。通过使用 super()，您可以调用父类的方法，而不必显式地引用父类的名称。这使得代码更加灵活和可维护。

以下是一个示例，展示了如何在子类中使用 super() 调用父类的方法：

```
class Parent:
    def __init__(self, name):
        self.name = name

    def greet(self):
        print(f"Hello, my name is {self.name}")

class Child(Parent):
    def __init__(self, name, age):
        super().__init__(name)
        self.age = age

    def greet(self):
        super().greet()
        print(f"I am {self.age} years old")

child = Child("Alice", 5)
child.greet()
```

在这个例子中，Child 类继承了 Parent 类，并重写了 greet() 方法。在 Child 类的构造函数中，我们使用 super() 调用了 Parent 类的构造函数，以便我们可以设置 name 属性。在 Child 类的 greet() 方法中，我们使用 super() 调用了 Parent 类的 greet() 方法，以便我们可以打印出父类的问候语。然后，我们添加了一个额外的打印语句，以便我们可以打印出子类的年龄。

### 为什么要用 super()，我记得不用 super()也能调用父类的方法吧？

super() 是一个内置函数，它允许您调用父类的方法。在 Python 中，当您创建一个子类时，它会继承其父类的所有方法和属性。有时，您可能需要在子类中重写父类的方法，但仍然想保留父类的实现。这就是 super() 很有用的地方。通过使用 super()，您可以调用父类的方法，而不必显式地引用父类的名称。这使得代码更加灵活和可维护。

当您在子类中重写父类的方法时，如果您想要保留父类的实现，您可以使用 super() 来调用父类的方法。如果您不使用 super()，而是直接引用父类的名称，那么您将无法访问子类中添加的属性和方法。这是因为直接引用父类的名称会覆盖子类中的同名方法，从而导致子类中的属性和方法无法访问。

以下是一个示例，展示了如何在子类中使用 super() 调用父类的方法：

```
class Parent:
    def __init__(self, name):
        self.name = name

    def greet(self):
        print(f"Hello, my name is {self.name}")

class Child(Parent):
    def __init__(self, name, age):
        super().__init__(name)
        self.age = age

    def greet(self):
        super().greet()
        print(f"I am {self.age} years old")

child = Child("Alice", 5)
child.greet()
```

在这个例子中，Child 类继承了 Parent 类，并重写了 greet() 方法。在 Child 类的构造函数中，我们使用 super() 调用了 Parent 类的构造函数，以便我们可以设置 name 属性。在 Child 类的 greet() 方法中，我们使用 super() 调用了 Parent 类的 greet() 方法，以便我们可以打印出父类的问候语。然后，我们添加了一个额外的打印语句，以便我们可以打印出子类的年龄。

### 请写一个不通过 super()，让子类调用父类的最简单的例子

为了让子类调用父类的方法，您可以直接使用父类的名称来调用方法。但是，这种方法会覆盖子类中的同名方法，从而导致子类中的属性和方法无法访问。以下是一个示例，展示了如何在子类中直接使用父类的名称来调用方法：

```
class Parent:
    def __init__(self, name):
        self.name = name

    def greet(self):
        print(f"Hello, my name is {self.name}")

class Child(Parent):
    def __init__(self, name, age):
        Parent.__init__(self, name)
        self.age = age

    def greet(self):
        Parent.greet(self)
        print(f"I am {self.age} years old")

child = Child("Alice", 5)
child.greet()
```

在这个例子中，Child 类继承了 Parent 类，并重写了 greet() 方法。在 Child 类的构造函数中，我们使用 Parent.**init**(self, name) 直接调用了 Parent 类的构造函数，以便我们可以设置 name 属性。在 Child 类的 greet() 方法中，我们使用 Parent.greet(self) 直接调用了 Parent 类的 greet() 方法，以便我们可以打印出父类的问候语。然后，我们添加了一个额外的打印语句，以便我们可以打印出子类的年龄。

### 请问这里为什么要写成**init**，直接写成 init 不行吗

在 Python 中，双下划线开头和结尾的方法是特殊方法，也称为魔术方法。这些方法在类中具有特殊的含义，例如 **init** 方法是类的构造函数，用于初始化对象的属性。如果您只是将方法命名为 init，那么它只是一个普通的方法，而不是构造函数。因此，您需要使用双下划线来表示这是一个特殊方法，以便 Python 可以正确地识别它并在需要时调用它。

在上面的示例中，**init** 方法是 Parent 类和 Child 类的构造函数，用于初始化对象的属性。如果您将其命名为 init，那么它只是一个普通的方法，而不是构造函数。因此，您需要使用双下划线来表示这是一个特殊方法，以便 Python 可以正确地识别它并在需要时调用它。

### 这里说的构造函数是什么意思

在面向对象编程中，构造函数是一种特殊的方法，用于初始化对象的属性。在 Python 中，构造函数的名称是 **init**，它是一个特殊方法，也称为魔术方法。当您创建一个类的实例时，Python 会自动调用该类的构造函数来初始化对象的属性。

在上面的示例中，Parent 类和 Child 类都有一个构造函数，即 **init** 方法。在 Parent 类的构造函数中，我们初始化了 name 属性。在 Child 类的构造函数中，我们首先调用了父类的构造函数，以便我们可以设置 name 属性，然后初始化了 age 属性。

因此，构造函数是一种特殊的方法，用于初始化对象的属性。在 Python 中，构造函数的名称是 **init**，它是一个特殊方法，也称为魔术方法。希望这可以帮助您理解构造函数的概念。

### 也就是说构造函数不需要调用，在创建类的时候构造函数就会自动执行对吧？

您的理解是正确的。在 Python 中，构造函数是一种特殊的方法，用于初始化对象的属性。当您创建一个类的实例时，Python 会自动调用该类的构造函数来初始化对象的属性。因此，您不需要显式地调用构造函数。在上面的示例中，Parent 类和 Child 类都有一个构造函数，即 **init** 方法。在 Parent 类的构造函数中，我们初始化了 name 属性。在 Child 类的构造函数中，我们首先调用了父类的构造函数，以便我们可以设置 name 属性，然后初始化了 age 属性。希望这可以帮助您理解构造函数的概念。

