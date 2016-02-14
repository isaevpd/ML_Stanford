def J(theta):
    return 3 * theta ** 4 + 4

def f(theta, eps):
    return (J(theta + eps) - J(theta - eps)) / (float(2 * eps))

print f(1, 0.01)