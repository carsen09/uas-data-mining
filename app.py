import streamlit as st
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load Data
data = pd.read_csv("orders.csv")

# Convert date to datetime
data["date_created_gmt"] = pd.to_datetime(data["date_created_gmt"])

# Streamlit App
st.title("E-commerce Order Visualization")

# Payment Method Distribution
st.subheader("Total Orders Per Payment Method")
fig, ax = plt.subplots()
sns.countplot(x="payment_method_title", data=data, palette="viridis", hue="payment_method_title")
st.pyplot(fig)

# Order Volume Over Time
st.subheader("Order Volume Over Time")
fig, ax = plt.subplots()
sns.lineplot(x="date_created_gmt", y="total_amount", data=data, marker="o", ax=ax)
plt.xticks(rotation=30)
st.pyplot(fig)