def print_folge(a, b, e):
    """
    Calculates and prints the sequence a(n) from b to e.

    Parameters:

    a : function
        Function representing the sequence.

    b : int
        Start index of the sequence.

    e : int
        End index of the sequence.
    """
    a(n) = a
    print("i \t a(n) \t a(n).n()")
    for i in range(b, e):
        print(i, "\t", a(i), "\t", a(i).n())


def folgePoints(a, b, e):
    """
    Computes the sequence values of a from b to e.
    Returns a list of tuples with points.

    Parameters:

    a : function
        Function representing the sequence.

    b : int
        Start index of the sequence.

    e : int
        End index of the sequence.

    Returns:

    list
        List of tuples (n, a(n)).
    """
    a(n) = a
    points = []
    for i in range(b, e):
        points.append((i, a(i)))
    return points


def plot_folge(a, b, e, **kwargs):
    """
    Plots the given sequence a from b to e.

    Parameters:

    a : function
        Function representing the sequence.

    b : int
        Start index of the sequence.

    e : int
        End index of the sequence.

    **kwargs : dict
        Additional plot options (e.g., color).

    Returns:

    plot
        Plot of the sequence points.
    """
    a(n) = a
    points = []
    for i in range(b, e):
        points.append((i, a(i)))

    if "color" in kwargs:
        return list_plot(points, color=kwargs['color'])
    return list_plot(points)


def summePoints(a, b, e):
    """
    Returns a list of tuples, with the form (n, a(n)).

    Parameters:

    a : function
        Function representing the series.

    b : int
        Start index of the series.

    e : int
        End index of the series.

    Returns:

    list
        List of tuples (n, sum up to n).
    """
    a(n) = a
    res = 0
    points = []
    for i in range(b, e):
        res += a(i)
        points.append((i, res))
    return points


def print_summe(a, b, e):
    """
    Visualizes a given series a from b to e.

    Parameters:

    a : function
        Function representing the series.

    b : int
        Start index of the series.

    e : int
        End index of the series.

    Returns:

    float
        Final sum of the series.
    """
    a(n) = a
    res = 0
    print("i \t a(n) \t a(n).n() \t\t added")
    for i in range(b, e + 1):
        res += a(i)
        print(i, "\t", res, "\t", res.n(), "\t", a(i))
    print("\n", res.n())
    return res


def plot_summe(a, b, e, **kwargs):
    """
    Plots the given series a from b to e.

    Parameters:

    a : function
        Function representing the series.

    b : int
        Start index of the series.

    e : int
        End index of the series.

    **kwargs : dict
        Additional plot options (e.g., color).

    Returns:

    plot
        Plot of the cumulative sums of the series.
    """
    a(n) = a
    res = 0
    points = []
    for i in range(b, e):
        res += a(i)
        points.append((i, res))

    if "color" in kwargs:
        return list_plot(points, color=kwargs['color'])
    return list_plot(points)


def summe(a, b, e):
    """
    Computes the sum of a series from b to e.

    Parameters:

    a : function
        Function representing the series.

    b : int
        Start index of the series.

    e : int
        End index of the series.

    Returns:

    float
        The calculated sum of the series.
    """
    a(n) = a
    res = 0
    for i in range(b, e + 1):
        res += a(i)
    return res


def betrag(x):
    """
    Returns the absolute value of x.

    Note:
    Prefer using abs() method for Sage operations.
    """
    if x < 0:
        return (-1) * x
    else:
        return x


def initialize():
    """
    Initializes user-defined methods. Should always be executed first.

    Returns:

    bool
        True if the initialization is successful, False otherwise.
    """
    try:
        summe(1, 1, 1)
        return True
    except Exception:
        return False


def plot_folge_r2(a, c, b, e, **kwargs):
    """
    Plots a sequence in R^2.

    Parameters:

    a : function
        First function representing the sequence (e.g., 1/n).

    c : function
        Second function representing the sequence (e.g., 1/n).

    b : int
        Starting index for plotting points.

    e : int
        Ending index for plotting points.

    **kwargs : dict
        Additional plot options (e.g., color).

    Returns:

    plot
        Plot of the points (a(n), g(n)).
    """
    a(n) = a
    g(n) = c
    points = []
    for i in range(b, e):
        points.append((a(i), g(i)))

    if "color" in kwargs:
        return list_plot(points, color=kwargs['color'])
    return list_plot(points)
