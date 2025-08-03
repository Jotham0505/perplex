from pydantic import BaseModel # the pydantic model will make sure of the type of query being passed and will automatically tell the endpoint that what we are requesting for is the body and nothing else

class ChatBody(BaseModel): 
    query: str