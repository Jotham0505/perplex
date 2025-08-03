from typing import List
from sentence_transformers import SentenceTransformer
import numpy as np

class SortSourceService:
    def __init__(self):
        self.embedding_model = SentenceTransformer("all-miniLM-L6-v2")

    def sort_sources(self, query: str, search_results: List[dict]):
        relevant_doc = []
        query_embedding = self.embedding_model.encode(query)

        for res in search_results:
            content = res.get('content')
        
            if not isinstance(content, str) or not content.strip():
                print("Warning: Skipping invalid or empty content:", content)
                continue
        
            res_embedding = self.embedding_model.encode(content)
        
            # Compute similarity as before
            similarity = np.dot(query_embedding, res_embedding) / (
            np.linalg.norm(query_embedding) * np.linalg.norm(res_embedding)
            )
            res['relevance_score'] = similarity
            if similarity > 0.3:
                relevant_doc.append(res)

        return sorted(relevant_doc,key=lambda x: x['relevance_score'], reverse=True)


