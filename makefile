.DEFAULT_GOAL := setup
.PHONY: setup

setup:
	# Install uv if it isn't installed
	@which uv >/dev/null 2>&1 || { \
		echo "uv not found; installing..."; \
		curl -LsSf https://astral.sh/uv/install.sh | sh; \
	}
	uv sync --dev

	# Install Claude Code if it isn't installed
	@if ! which claude >/dev/null 2>&1 && [ ! -f "$$HOME/.local/bin/claude" ]; then \
		echo "Claude Code not found; installing..."; \
		curl -fsSL https://claude.ai/install.sh | bash; \
		echo 'export PATH="$$HOME/.local/bin:$$PATH"' >> $$HOME/.bashrc; \
		echo "Claude Code installed. Run 'source ~/.bashrc' or restart your shell to use it."; \
	fi
