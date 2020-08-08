export                OMZSH_ROOT_1234_MAGIC=$(dirname $0)
omzsh_root () { echo $OMZSH_ROOT_1234_MAGIC ; }

omzsh_zsh  () { echo $(omzsh_root)/BLD.ZSH ; }
omzsh_remove () { rm -rf $(omzsh_zsh) ; }
omzsh_install () { 
    [[ -d $ZSH ]] && bh0note OMZSH is already installed
    [[ -d $ZSH ]] && return
    [[ -d $ZSH ]] || bh0note Installing OMZSH
    [[ -d $ZSH ]] || $(omzsh_root)/vendor/install.sh --unattended
    [[ -d $ZSH ]] || echo OMZSH install failed
    [[ -d $ZSH ]] || echo OMZSH install succeded
}


bh0export ZSH	$(omzsh_root)/BLD.ZSH 

