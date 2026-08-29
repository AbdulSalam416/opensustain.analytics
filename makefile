
cleanup:
	uv tool run pre-commit install
	uv tool run pre-commit run --all

build-json:
	.venv/bin/python scripts/build_analytics_payloads.py

web-dev:
	npm --prefix web run dev

web-build:
	npm --prefix web run build

web-typecheck:
	npm --prefix web run typecheck

run:
	streamlit run streamlit-app-tab.py
