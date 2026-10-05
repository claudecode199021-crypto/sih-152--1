# AI-Driven Social Media Analytics Framework

A full-stack, real-time social media intelligence web application built with FastAPI, SQLite/TimescaleDB, NLP sentiment inference engines, trend forecasting curves, network graph topology visualizers, demographic profiling with $k$-anonymity ($k \ge 10$), and a Dribbble-level modern dashboard.

## 🚀 One-Command Quick Start

```bash
# 1. Seed sample events and run full test suite
make seed && make test-all

# 2. Launch backend API server
python3 backend/app/main.py
```

Open `http://localhost:8000/` or `frontend/public/index.html` in your browser to view the interactive dashboard.

## 📊 Features & Analytics Modules
1. **Overview Dashboard**: KPIs, Live stream feed ticker, mini burst trends, active alerts.
2. **Sentiment & Emotion**: Multi-dimensional scoring (polarity, stance, 6 emotions, sarcasm detection, changepoint shift annotations).
3. **Audience & Demographics**: Age pyramid, country distribution, language breakdown, $k$-anonymity privacy safeguards.
4. **Trends & Forecasting**: Kleinberg burst Z-score, 24-hour predictive volume curve (MAPE 12.4%).
5. **Network Topology**: Interactive HTML5 Canvas graph, PageRank KOL rankings, Louvain community clusters, virality cascade tree.
6. **Sources & Replay Control**: Start/Stop connectors, replay speed controller (1x - 100x), DLQ retry inspector.
7. **Alerts & Export**: Automated alert rules, instant CSV/JSON export, daily AI executive summary.

## 🧪 Running Automated Tests

```bash
make test-all
```
