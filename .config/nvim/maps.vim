" Fugitive Conflict Resolution
nnoremap <leader>gd :Gvdiff<CR>
nnoremap <leader>gdh :diffget //2<CR>
nnoremap <leader>gdl :diffget //2<CR>
nnoremap <leader>gf  :Git fetch --all<CR>
nnoremap <leader>grom :Git rebase origin/main<CR>
nnoremap <leader>gst  :Git status<CR>
nnoremap <leader>gs   :G<CR>

" Invoke Terraform  commands
nnoremap <leader>tv :Terraform validate<CR>
nnoremap <leader>ti :Terraform init<CR>
nnoremap <leader>tp :Terraform plan<CR>
nnoremap <leader>td :!open https://registry.terraform.io/providers/hashicorp/aws/latest/docs<CR>

" move between panes to left/bottom/top/right
nnoremap  <C-h> <C-w>h
nnoremap  <C-k> <C-w>k
nnoremap  <C-j> <C-w>j
nnoremap  <C-l> <C-w>l

" UltiSnip Remap
"let g:UltiSnupsExpandTrigger="<tab>"

" Write and quit all buffer
inoremap <leader>ww :wa!<cr>
nnoremap <leader>ww :wa!<cr>
nnoremap <leader>wq :wqall!<cr>
inoremap <leader>ww :wqall!<cr>

" Navigate buffers
nnoremap <S-l> :bnext<CR>
nnoremap <S-h> :bprevious<CR>

" file browser
nnoremap <leader>e :Lexplore 30<CR>

" Rezie windows with arrow keys
nnoremap  <S-Up>   :resize -2<CR>
nnoremap  <S-Down> :resize +2<CR>
nnoremap  <S-Left> :vertical -2<CR>
nnoremap  <S-Right> :vertical +2<CR>
