from dotenv import load_dotenv
from pydantic_settings import BaseSettings
import os

# ✅ Load variables from .env
load_dotenv()

class Settings(BaseSettings):
    TAVILY_API_KEY: str
    GEMINI_API_KEY: str

    class Config:
        env_file = ".env"       # ✅ Explicitly tell pydantic to look here
        env_file_encoding = "utf-8"  # ✅ (Optional but safe)

# Optional: make this instance globally reusable
settings = Settings()
