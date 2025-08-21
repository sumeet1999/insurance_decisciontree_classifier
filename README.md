# AI Project: Insurance Premium Prediction with Decision Trees and Prolog

This project uses a data-driven and logic-based approach to predict insurance premium levels. It involves training a decision tree model on a medical dataset and then encoding the learned logic into a Prolog knowledge base for querying.

---
## ## Features

* [cite_start]**Decision Tree Model**: A decision tree is trained on a medical insurance dataset to find patterns that predict premium costs[cite: 18].
* [cite_start]**Rule Extraction**: Logical IF-THEN rules are generated from the paths of the trained decision tree[cite: 19].
* [cite_start]**Prolog Knowledge Base**: The extracted rules are encoded into a Prolog file, creating a logical knowledge base for predictions[cite: 19].
* [cite_start]**Prediction**: The system takes an account holder's details as input and uses the knowledge base to predict whether their insurance premium will be "high" or "low"[cite: 19].

---
## ## Prerequisites

Before you begin, ensure you have the following software installed on your system:

* **Python 3.8** or newer
* **SWI-Prolog** - [Download from the official website](https://www.swi-prolog.org/)

---
## ## Setup and Installation

1.  **Clone the Repository**
    ```bash
    git clone <your-repository-url>
    cd <your-repository-name>
    ```

2.  **Create and Activate a Virtual Environment** (Recommended)
    ```bash
    # Create the environment
    python -m venv venv

    # Activate it
    # On Windows:
    venv\Scripts\activate
    # On macOS/Linux:
    source venv/bin/activate
    ```

3.  **Install Python Dependencies**
    Install all the required libraries using the `requirements.txt` file.
    ```bash
    pip install -r requirements.txt
    ```

---
## ## How to Run

1.  **Train the Decision Tree**: First, run the Python script to train the model on the dataset and generate a visualization of the tree.
    ```bash
    python train_model.py
    ```
    This will create an image file (`decision_tree.png`) showing the learned rules.

2.  **Update the Knowledge Base**: Open the `insurance_rules.pl` file in a text editor. Update the **facts** at the top of the file with the details of the person you want to predict.

3.  **Run the Prolog Prediction**:
    * Open your terminal and navigate to the project directory.
    * Load the knowledge base into SWI-Prolog:
        ```bash
        swipl -s insurance_rules.pl
        ```
    * At the Prolog prompt (`?-`), run the query:
        ```prolog
        ?- predict_premium(Prediction).
        ```
    Prolog will return the prediction (e.g., `Prediction = high.`).

---
## ## Project File Structure

```
.
├── train_model.py              # Python script to train the decision tree
├── insurance_rules.pl          # The Prolog knowledge base with facts and rules
├── insurance.csv               # The dataset used for training
├── requirements.txt            # Python dependencies for the project
└── README.md                   # This file
```
