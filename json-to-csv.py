import csv
import json

# Load JSON data
with open('tokopedia-review.json', 'r') as file:
    data = json.load(file)

# Navigate to the correct list in the JSON structure
reviews = data['productrevGetProductReviewList']['list']

# Open a CSV file for writing
with open('reviews.csv', 'w', newline='') as csvfile:
    fieldnames = ['id', 'message', 'productRating', 'reviewResponse']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

    # Write the header
    writer.writeheader()

    # Write the JSON data to the CSV file
    for item in reviews:
        writer.writerow({
            'id': item.get('id'),
            'message': item.get('message'),
            'productRating': item.get('productRating'),
            'reviewResponse': item.get('reviewResponse')['message']
        })