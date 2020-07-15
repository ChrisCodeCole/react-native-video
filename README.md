## Update Repo From Original

### Git Fetch And Merge
- Why? This will place the original repository commits on top of whatever the last commit was. This is the preferred method to updating this repository. A git rebase may be done after conflicts are resolved and there aren't any issues.

- Command: `git fetch upstream && git merge upstream/master`

### Git Rebase From Original
- Why? This will place the commits from this repository on top of any commits from the original repository (which serves as the base). In doing so, it makes it cleaner when viewing our changes. This should only be done after fetching and merging, then making sure there aren't any conflicts. 

- Command: `git fetch upstream && git rebase upstream/master`
- This command will also require a `git push -f` to force an update. 

## Build Youbora Libraries
### Installing Carthage
- [Carthage Documentation](https://github.com/Carthage/Carthage)
- Homebrew: Command `brew install carthage`

### Adding Frameworks
- Within the ios/ directory of the project run the command below
- Command: `carthage bootstrap`


