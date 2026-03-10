import math

def calcular_melhor_ponto(X, Y):
    # (d / (X * sqrt(d^2 + 40^2))) = 1 / Y
    d = (40 * X) / math.sqrt(Y**2 - X**2)

    # Calcula a distância da ilha até a estação
    distancia_ilha_estacao = math.sqrt(d**2 + 40**2)
    # Distância total: distância do barco + distância do carro
    dist_ilha_cidade = distancia_ilha_estacao + (100 - d)

    return d, dist_ilha_cidade


X = float(input("Velocidade da barca: "))
Y = float(input("Velocidade dos carros: "))

if Y <= X:
    print("A velocidade do carro deve ser maior que a da barca")
else:
    dist_est_cidade, dist_ilha = calcular_melhor_ponto(X, Y)
    print(f"A estação das barcas deve estar a {dist_est_cidade:.3f} km da cidade.")
    print(f"A distância total percorrida da ilha até a cidade é {dist_ilha:.3f} km.")
