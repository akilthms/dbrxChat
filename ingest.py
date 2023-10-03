
from langchain.embeddings import OpenAIEmbeddings
from langchain.text_splitter import RecursiveCharacterTextSplitter
from langchain.document_loaders import UnstructuredMarkdownLoader, TextLoader
from langchain.vectorstores import FAISS
import streamlit as st
from itertools import chain

# loader = TextLoader("sql/ddl_invoice.sql")# UnstructuredMarkdownLoader('schema.md')
# data = loader.load()

# Load in multiple ddl scripts
directory = "sql"
ddls_paths = ["ddl_invoice.sql","ddl_customer.sql", "ddl_products.sql"]
data = [ TextLoader(f"{directory}/{ddl}").load() for ddl in ddls_paths]
data = list(chain.from_iterable(data))

text_splitter = RecursiveCharacterTextSplitter(chunk_size=1000, chunk_overlap=20)
texts = text_splitter.split_documents(data)

embeddings = OpenAIEmbeddings(openai_api_key = st.secrets["OPENAI_API_KEY"])
docsearch = FAISS.from_documents(texts, embeddings)

docsearch.save_local("faiss_index")

# with open("vectors.pkl", "wb") as f:
#     pickle.dump(docsearch, f)
