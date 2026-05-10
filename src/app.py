import streamlit as st
from transformers import pipeline

st.title("AI Demo using AWS + Hugging Face")

classifier = pipeline(
    "sentiment-analysis",
    model="distilbert-base-uncased-finetuned-sst-2-english"
)

text = st.text_input("Enter text")

if text:
    result = classifier(text)
    st.write(result)
