import math

def calcular_dimensoes(V, X, Y):
    # Calcula o raio que minimiza o custo
    r = (V * Y / (2 * math.pi * X)) ** (1/3)
    
    # Calcula a altura correspondente
    h = V / (math.pi * r**2)
    
    Area_base = math.pi * r**2      # Área da base
    Area_lado = 2 * math.pi * r * h # Área lateral
    
    # área total da lata
    area_total = 2 * Area_base + Area_lado
    
    # Calcula o custo total
    custo_total = 2 * Area_base * X + Area_lado * Y
    
    return r, h, area_total, custo_total


V = float(input("Volume da lata (em cm³): "))
V /= 1000000
X = float(input("Custo por metro quadrado do material da base/tampa (em R$): "))
Y = float(input("Custo por metro quadrado do material das laterais (em R$): "))

raio, altura, area, custo = calcular_dimensoes(V, X, Y)

print(f"Raio da base: {raio:.3f} cm")
print(f"Altura da lata: {altura:.3f} cm")
print(f"Área total da da lata: {area:.3f} cm²")
print(f"Custo total do material: R${custo:.2f}")
