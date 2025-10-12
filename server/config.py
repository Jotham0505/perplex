from dotenv import load_dotenv
from pydantic_settings import BaseSettings
import os


load_dotenv()

class Settings(BaseSettings):
    TAVILY_API_KEY: str
    GEMINI_API_KEY: str

    class Config:
        env_file = ".env"       
        env_file_encoding = "utf-8"  


settings = Settings()
