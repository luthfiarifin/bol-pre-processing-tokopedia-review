import csv
from nltk.tokenize import word_tokenize
from nltk.corpus import stopwords
from Sastrawi.Stemmer.StemmerFactory import StemmerFactory

# Download necessary NLTK datasets
import nltk
nltk.download('punkt')
nltk.download('stopwords')

# Initialize the Indonesian stemmer
factory = StemmerFactory()
stemmer = factory.create_stemmer()

# Load Indonesian stopwords set
stop_words = set(stopwords.words('indonesian'))

all_tokens = []
all_words = []
all_stemmed = []

def process_text(text):
    # Tokenize
    tokens = word_tokenize(text)
    if (len(all_tokens) < 10):
        all_tokens.append(tokens)
    # Filter out punctuation and stopwords
    words = [word for word in tokens if word.isalpha() and word not in stop_words]
    if (len(all_words) < 10):
        all_words.append(words)
    # Stemming
    stemmed = [stemmer.stem(word) for word in words]
    if (len(all_stemmed) < 10):
        all_stemmed.append(stemmed)
    return stemmed

# Read the CSV and process the 'message' column
with open('reviews.csv', 'r') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        message = row['message']
        processed_message = process_text(message)
        # print(processed_message)

# Print the first 10 tokens, words, and stemmed words
print('First 10 tokens:')
print(all_tokens)
print('First 10 words:')
print(all_words)
print('First 10 stemmed words:')
print(all_stemmed)