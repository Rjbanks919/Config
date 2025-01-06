function lo --wraps='git log --oneline | head' --description 'alias lo=git log --oneline | head'
  git log --oneline | head $argv
        
end
