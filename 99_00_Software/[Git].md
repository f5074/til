## Git 사용방법

git --version

git config --global user.name "사용자명"
git config --global user.email "이메일"
git config --list

cd C:\Temp\sample
git init
git add *
git commit -m "설명"
git status

git remote add origin https://github.com/f5074/sample.git
git push origin master

## Git Revert
git log
git reset --hard "원하는 HEAD"
git push -f origin master


## git config 설정시 저장 위치
System	 <git-install-root>\mingw64\etc\gitconfig	 gitconfig
Global	 C:\Users\username\.gitconfig	 .gitconfig
Local	 <git-repo>\.git\config	 config
Worktree	 <git-repo>\.git\config.worktree	 config.worktree
Portable	 C:\ProgramData\Git\config	 config

git config --global user.name "사용자명"
git config --global user.email "이메일"
git config --local user.name "사용자명"
git config --local user.email "이메일"

## References
Git Portable Location
https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/Where-system-global-and-local-Windows-Git-config-files-are-saved

