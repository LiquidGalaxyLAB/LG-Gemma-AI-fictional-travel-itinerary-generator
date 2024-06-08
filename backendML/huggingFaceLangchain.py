from langchain_huggingface import HuggingFaceEndpoint
import os
os.environ["HUGGINGFACEHUB_API_TOKEN"] = "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"


llm = HuggingFaceEndpoint(
    repo_id="meta-llama/Meta-Llama-3-70B-Instruct",
    task="text-generation",
    max_new_tokens=512,
    do_sample=False,
    repetition_penalty=1.03,
)
from langchain_core.messages import (
    HumanMessage,
    SystemMessage,
)
from langchain_huggingface import ChatHuggingFace


messages = [
    SystemMessage(content="You're a helpful assistant"),
    HumanMessage(
        content="What happens when an unstoppable force meets an immovable object?"
    ),
]

chat_model = ChatHuggingFace(llm=llm)

res = chat_model.invoke(messages)
print(res.content)