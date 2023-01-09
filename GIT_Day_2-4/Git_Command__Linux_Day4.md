# Branches

# how to to create new branch from the main branch 

 - git checkout -b "branch_name"


# how to check the branches

- git branch 

# how to switch between the branches 

- git checkout "branch_name"


# How to to clone a specific branch from the git hub server
 - git clone --branch "branch_name" repo_link

# to push the new brnach as upstream branch 
- git push --set-upstream origin "branch_name"


# to check the git commit logs
- git log 

# to quit from log area

- q

# to Revert the changes done we can use "commit id" and revert 
- git revert "commit_id"


# Cherry picking is the act of picking a commit from a branch and applying it to another.
- git cherry-pick "Commit_id"

# Rebasing is the process of moving or combining a sequence of commits to a new base commit. 

- git rebase "branch_name"

# Sets the name you want attached to your commit transactions
- git  config --global user.name "[name]"

# Sets the email  you want attached to your commit transactions
- git config --global user.email "[email address]"

