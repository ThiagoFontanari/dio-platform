from PIL import Image
import numpy as np

# Loading the image and converting to a numpy array
# Carregando a imagem e convertendo para um numpy array
img = Image.open('seya.png')
imar = np.array(img)

# Showing the original image
# Apresentando a imagem original
img.show()

# Separating the RGB components of the image
# Separando as componentes RGB da imagem
R = imar[: , : , 0]
G = imar[: , : , 1]
B = imar[: , : , 2]

# Applying the components conversion formula to make the image grayscale
# Aplicando a fórmula de conversão das componentes para deixar a imagem em escala de cinza
imgs = 0.2989 * R + 0.5870 * G + 0.1140 * B

# Showing the grayscales image
# Apresentando a imagem em escala de cinza
img = Image.fromarray(imgs)
img.show()
