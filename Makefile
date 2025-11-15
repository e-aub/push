SHELL_BIN=$(HOME)/.push/bin/push
CAT_BIN=$(HOME)/.push/bin/cat
LS_BIN=$(HOME)/.push/bin/ls


install:
	rm -rf $(HOME)/.push
	mkdir -p ~/.push/bin
	touch ~/.push/.pushrc
	touch ~/.push/.push_history
	echo 'export PATH=$$HOME/.push/bin:$$PATH' >> ~/.push/.pushrc
	$(MAKE) all
	@if [ -f ~/.bashrc ]; then \
		grep -q "~/.push/.pushrc" ~/.bashrc || echo 'source ~/.push/.pushrc 2>/dev/null' >> ~/.bashrc; \
	fi
	@if [ -f ~/.zshrc ]; then \
		grep -q "~/.push/.pushrc" ~/.zshrc || echo 'source ~/.push/.pushrc 2>/dev/null' >> ~/.zshrc; \
	fi
	@echo "\033[32mInstallation complete! Please run: source ~/bashrc or source ~/zshrc\033[0m"
	@echo "\033[32mOr restart your terminal to use 'push' command.\033[0m"

all: $(SHELL_BIN) $(CAT_BIN) $(LS_BIN)

$(SHELL_BIN):
	cargo build --release --manifest-path=shell/Cargo.toml
	cp shell/target/release/shell $(SHELL_BIN)

$(CAT_BIN):
	cargo build --release --manifest-path=cat/Cargo.toml
	cp cat/target/release/cat $(CAT_BIN)

$(LS_BIN):
	cargo build --release --manifest-path=ls/Cargo.toml
	cp ls/target/release/ls $(LS_BIN)

clean: 
	$(MAKE) cargo-clean
	rm -rf $(HOME)/.push

cargo-clean:
	cargo clean --manifest-path=shell/Cargo.toml
	cargo clean --manifest-path=cat/Cargo.toml
	cargo clean --manifest-path=ls/Cargo.toml

run: 
	$(SHELL_BIN)

push: cargo-clean clean
	@read -p "Enter commit message: " msg; \
	git add .; \
	git commit -m "$$msg"; \
	git push
