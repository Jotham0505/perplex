import google.generativeai as genai

from config import Settings


settings = Settings()
class LLMService:
    def __init__(self):
        genai.configure(api_key=settings.GEMINI_API_KEY)
        self.model = genai.GenerativeModel("gemini-2.0-flash")

    def generate_response(self, query: str, search_results: list[dict]):
        context_text = "\n\n".join([
            f"Source {i+1} ({result['url']}):\n{result['content']}"
            for i, result in enumerate(search_results)
        ])

        full_prompt = f"""
        You are a highly knowledgeable and precise assistant. 
        You will answer the user's query strictly based on the context provided from web sources below. 
        Only use your own knowledge if the context does not provide the information, and clearly indicate that.

        Context from web search:
        {context_text}

        User Query: {query}

        Instructions:
        1. Carefully read all context provided.
        2. Answer the query in a detailed, comprehensive, and well-structured manner.
        3. Cite sources from the context using the format [Source X].
        4. If the context does not fully answer the query, you may provide additional information, clearly stating it is external.
        5. Provide step-by-step reasoning if applicable.
        6. Avoid making assumptions; rely on the sources as much as possible.
        7. Conclude with a summary that directly answers the query.

        Please generate a clear, accurate, and well-cited response.
        """

        response = self.model.generate_content(full_prompt, stream=True)

        for chunk in response:
            yield chunk.text
