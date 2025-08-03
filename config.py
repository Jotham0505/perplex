from dotenv import load_dotenv
from pydantic_settings import BaseSettings

load_dotenv()

class Settings(BaseSettings): # this class will go to the .env file and pull data from the api key mentioned in the .env file
    TAVILY_API_KEY: str = ""
    GEMINI_API_KEY: str = ""