from sklearn.datasets import load_iris
from sklearn.linear_model import LogisticRegression
from joblib import dump
from sklearn.model_selection import train_test_split


iris = load_iris()
X, y = iris['data'], iris['target']
X_train, X_test, y_train, y_test = train_test_split(
X, y, test_size=0.33, random_state=42)

clf = LogisticRegression(random_state=0).fit(X_train, y_train)

print(clf.score(X_test, y_test))

dump(clf, "models/model.joblib")



