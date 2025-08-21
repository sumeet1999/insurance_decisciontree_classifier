import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
import matplotlib.pyplot as plt
from sklearn import tree


df = pd.read_csv('Medicalpremium.csv')

# print(df.head())


# Convert the target variable 'Premium Price' into categories
# use the median price as the cutoff
median_price = df['PremiumPrice'].median()
df['PremiumCategory'] = df['PremiumPrice'].apply(lambda x: 'high' if x > median_price else 'low')

# Separate features (X) and the new target (y)
# drop the original price and our new category column from the features
X = df.drop(['PremiumPrice', 'PremiumCategory'], axis=1)
y = df['PremiumCategory']

# Convert any categorical features in X into numbers
X = pd.get_dummies(X)

print("Features (X) after conversion:")
print(X.head())


# Split data into 80% for training and 20% for testing
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Create a Decision Tree Classifier model
# max_depth=3 will keep the tree small and easy to read (increase depth if needed)
model = DecisionTreeClassifier(max_depth=3, random_state=42)

# Train the model using the training data
model.fit(X_train, y_train)

print("\nDecision tree model has been trained successfully!")

# Set up the figure size
plt.figure(figsize=(20,10))

# Plot the tree
tree.plot_tree(model,
               feature_names=X.columns,
               class_names=model.classes_,
               filled=True,
               rounded=True)

# Save the plot to a file so you can view it clearly
plt.savefig('decision_tree.png')
print("\nDecision tree visualization has been saved as 'decision_tree.png'")