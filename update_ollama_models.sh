done
#!/bin/bash
# update_llm.sh
# By default this script is a no-op to avoid automatic model pulls during builds.
# To enable automatic updates set AUTO_UPDATE_OLLAMA=true in the environment before
# running the Makefile `update` target or invoking this script directly.

AUTO_UPDATE=${AUTO_UPDATE_OLLAMA:-"false"}

if [ "${AUTO_UPDATE,,}" != "true" ]; then
  echo "AUTO_UPDATE_OLLAMA is not true — skipping Ollama model updates."
  exit 0
fi

# Retrieves the list of LLMs installed in the Docker container
llm_list=$(docker exec ollama ollama list | tail -n +2 | awk '{print $1}')

# Loop over each LLM to update it
for llm in $llm_list; do
  echo "Updating model: $llm"
  docker exec ollama ollama pull $llm
done
