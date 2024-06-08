import os
from langchain_community.llms import HuggingFaceEndpoint
from langchain.chains import LLMChain
from langchain.prompts import PromptTemplate

# Define the repository ID for the Gemma 2b model
repo_id = "google/gemma-2b-it"

# Set up a Hugging Face Endpoint for Gemma 2b model
# llm = HuggingFaceEndpoint(
#     repo_id=repo_id, model_kwargs=1024, temperature=0.1
# )
os.environ["HUGGINGFACEHUB_API_TOKEN"] = "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"

llm = HuggingFaceEndpoint(
    repo_id=repo_id,
add_to_git_credential=True,
    max_new_tokens=512,
    temperature=0.1,
)
question = "Who won the FIFA World Cup in the year 1994?"

template = """Question: {question}

Answer: Let's think step by step."""

prompt = PromptTemplate.from_template(template)

llm_chain = LLMChain(prompt=prompt, llm=llm)
print(llm_chain.invoke(question))