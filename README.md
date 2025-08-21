# AI Project: Insurance Premium Prediction with Decision Trees and Prolog

This project uses a data-driven and logic-based approach to predict insurance premium levels. It involves training a decision tree model on a medical dataset and then encoding the learned logic into a Prolog knowledge base for querying.

---
## ## Features

* **Decision Tree Model**: A decision tree is trained on a medical insurance dataset to find patterns that predict premium costs.
* **Rule Extraction**: Logical IF-THEN rules are generated from the paths of the trained decision tree.
* **Prolog Knowledge Base**: The extracted rules are encoded into a Prolog file, creating a logical knowledge base for predictions.
* **Prediction**: The system takes an account holder's details as input and uses the knowledge base to predict whether their insurance premium will be "high" or "low".

---
## ## Prerequisites

Before you begin, ensure you have the following software installed on your system:

* **Python 3.8** or newer
* **SWI-Prolog** - [Download from the official website](https://www.swi-prolog.org/)

---
## ## Setup and Installation

1.  **Download the Dataset**
    [cite_start]This project requires the medical insurance premium dataset. [cite: 20]
    * [cite_start]Download the dataset from [Kaggle](https://www.kaggle.com/datasets/tejashvi14/medical-insurance-premium-prediction). [cite: 20]
    * Place the CSV file in the root directory of this project and name it `insurance.csv`.

2.  **Clone the Repository**
    ```bash
    git clone <your-repository-url>
    cd <your-repository-name>
    ```

3.  **Create and Activate a Virtual Environment** (Recommended)
    ```bash
    # Create the environment
    python -m venv venv

    # Activate it
    # On Windows:
    venv\Scripts\activate
    # On macOS/Linux:
    source venv/bin/activate
    ```

4.  **Install Python Dependencies**
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
├── Medicalpremium.csv               # The dataset used for training (must be downloaded)
├── requirements.txt            # Python dependencies for the project
└── README.md                   # This file
```
