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

" Save file with <leader> + s
nnoremap <leader>s :w<cr>
inoremap <leader>s :w<cr>
nnoremap <leader>ww :wa!<cr>
inoremap <leader>ww :wa!<cr>
