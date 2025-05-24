from fastapi import FastAPI

from pydantic_models.chat_body import ChatBody
from services.search_service import SearchService

app = FastAPI()

search_service = SearchService()

# chat 
@app.post("/chat") # we need to take the body of the chat, and we have to use POST
def chat_endpoint(body: ChatBody):
    #serach the web and find appropriate sources
    search_service.web_search(body.query)


    
    # sort the sources based on relevance
    # generate the response using LLM
    return body.query
