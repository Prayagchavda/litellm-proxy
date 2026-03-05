FROM ghcr.io/berriai/litellm:main-stable
COPY litellm_config.yaml /app/config.yaml
ENV PORT=4000
EXPOSE 4000
HEALTHCHECK --interval=30s --timeout=10s --retries=3 \
  CMD curl -f http://localhost:4000/health || exit 1
CMD ["--config", "/app/config.yaml", "--port", "4000", "--host", "0.0.0.0", "--detailed_debug"]
