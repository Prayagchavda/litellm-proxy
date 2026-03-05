FROM ghcr.io/berriai/litellm:main-stable
COPY litellm_config.yaml /app/config.yaml
ENV PORT=4000
EXPOSE 4000
CMD ["--config", "/app/config.yaml", "--port", "4000", "--host", "0.0.0.0"]
