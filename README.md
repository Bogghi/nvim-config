**This repo is supposed to be used as config by NvChad users!**

- The main nvchad repo (NvChad/NvChad) is used as a plugin by this repo.
- So you just import its modules , like `require "nvchad.options" , require "nvchad.mappings"`
- So you can delete the .git from this repo ( when you clone it locally ) or fork it :)

# Setup on New Machine

1. Clone this config to your Neovim config directory:
   ```bash
   git clone <your-repo-url> ~/.config/nvim
   ```

2. Start Neovim - plugins will automatically install via Lazy.nvim:
   ```bash
   nvim
   ```

3. Install LSP servers via Mason (`:Mason`):
   - `html` - HTML language server
   - `cssls` - CSS language server
   - `emmet-ls` - Emmet completion for HTML/CSS/Vue
   - `vue-language-server` - Vue.js language server (Volar)

   Or run this command in Neovim:
   ```vim
   :MasonInstall html-lsp css-lsp emmet-ls vue-language-server
   ```

4. Restart Neovim to activate all LSP servers

## Emmet Completion

Emmet is configured to work in the following filetypes:
- HTML, CSS, SCSS
- JavaScript/TypeScript (JSX/TSX)
- Vue

Usage examples:
- `.class` → `<div class="class"></div>`
- `ul>li*3` → creates a list with 3 items
- `button.btn.btn-primary` → `<button class="btn btn-primary"></button>`

# Credits

1) Lazyvim starter https://github.com/LazyVim/starter as nvchad's starter was inspired by Lazyvim's . It made a lot of things easier!
