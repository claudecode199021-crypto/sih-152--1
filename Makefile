PATH := ./scripts:$(PATH)
export PATH

.PHONY: up down logs seed test-phase0 test-phase1 test-phase2 test-phase3 test-phase4 test-phase5 test-phase6 test-phase7 test-phase8 test-phase9 test-phase10 test-all help

up:
	@echo "Starting services..."
	@python3 backend/app/main.py --daemon || true

down:
	@echo "Stopping services..."
	@pkill -f "python3 backend/app/main.py" || true

logs:
	@echo "Fetching logs..."
	@tail -n 50 logs/app.log 2>/dev/null || echo "No log file found."

seed:
	@echo "Seeding data..."
	@python3 scripts/generate_replay_data.py
	@python3 scripts/generate_eval_data.py

test-phase0:
	@PATH=./scripts:$$PATH python3 scripts/test_runner.py phase0

test-phase1:
	@PATH=./scripts:$$PATH python3 scripts/test_runner.py phase1

test-phase2:
	@PATH=./scripts:$$PATH python3 scripts/test_runner.py phase2

test-phase3:
	@PATH=./scripts:$$PATH python3 scripts/test_runner.py phase3

test-phase4:
	@PATH=./scripts:$$PATH python3 scripts/test_runner.py phase4

test-phase5:
	@PATH=./scripts:$$PATH python3 scripts/test_runner.py phase5

test-phase6:
	@PATH=./scripts:$$PATH python3 scripts/test_runner.py phase6

test-phase7:
	@PATH=./scripts:$$PATH python3 scripts/test_runner.py phase7

test-phase8:
	@PATH=./scripts:$$PATH python3 scripts/test_runner.py phase8

test-phase9:
	@PATH=./scripts:$$PATH python3 scripts/test_runner.py phase9

test-phase10:
	@PATH=./scripts:$$PATH python3 scripts/test_runner.py phase10

test-all:
	@PATH=./scripts:$$PATH python3 scripts/test_runner.py
