# LeetCode #1527 , Patients With A Condition
# Difficulty: Easy

# Table :
# Patients: patient_id, patient_name, conditions

# Task: Find patients who have Type I Diabetes
# Type I Diabetes conditions always start with 'DIAB1'
# Conditions are separated by spaces
# Return patient_id, patient_name, and conditions

import pandas as pd

def find_patients(patients: pd.DataFrame) -> pd.DataFrame:
    return patients[patients['conditions'].str.contains(r'(^|\s)DIAB1', na=False)]

# Approach:
# 1. Use .str.contains() to search for conditions starting with 'DIAB1'
# 2. (^|\s) ensures that 'DIAB1' appears either at the start of the string or after a space
# 3. na=False treats missing conditions as False
# 4. Return the filtered patients
