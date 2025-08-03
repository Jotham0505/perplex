from fastapi import FastAPI

from pydantic_models.chat_body import ChatBody
from services.sort_source_service import SortSourceService
from services.search_service import SearchService

app = FastAPI()

search_service = SearchService()
sort_source_service = SortSourceService()

# chat 
@app.post("/chat") # we need to take the body of the chat, and we have to use POST
def chat_endpoint(body: ChatBody):
    #serach the web and find appropriate sources
    search_results = search_service.web_search(body.query)

    sorted_results = sort_source_service.sort_sources(body.query,search_results)
    # generate the response using LLM
    return body.query
