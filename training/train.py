from sklearn.datasets import load_iris
from sklearn.linear_model import LogisticRegression
from joblib import dump
from sklearn.model_selection import train_test_split

# Load the iris dataset and split it into training and testing sets
iris = load_iris()
X, y = iris['data'], iris['target']
X_train, X_test, y_train, y_test = train_test_split(
X, y, test_size=0.33, random_state=42)

# Training the model
clf = LogisticRegression(random_state=0).fit(X_train, y_train)

print(clf.score(X_test, y_test))

# Save the model to a file
dump(clf, "models/model.joblib")



