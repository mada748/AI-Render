FROM ollama/ollama:latest

ENV OLLAMA_HOST=0.0.0.0:11434

RUN ollama serve & \
    sleep 10 && \
    ollama pull qwen2:0.5b && \
    pkill ollama

EXPOSE 11434

ENTRYPOINT ["ollama", "serve"]
