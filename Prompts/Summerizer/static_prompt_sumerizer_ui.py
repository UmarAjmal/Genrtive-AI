from langchain_google_genai import ChatGoogleGenerativeAI
from dotenv import load_dotenv
import os
import streamlit as st

load_dotenv()

st.header("Summarizer UI")

user_input = st.text_input("Enter the text you want to summarize")

if st.button("Summarize"):
    if user_input:
            api_key = os.getenv("GOOGLE_API_KEY")
            model = ChatGoogleGenerativeAI(model="gemini-2.5-flash", temperature=0.7, api_key=api_key)
            result = model.invoke(user_input)
            st.write(result.content)   
    else:
        st.warning("Please enter some text to summarize.")
else:    
    st.info("Click the 'Summarize' button to get the summary of the text you entered.")