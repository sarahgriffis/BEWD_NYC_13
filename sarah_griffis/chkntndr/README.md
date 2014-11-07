![bewd](https://www.dropbox.com/s/w8qulx3iylxmfw5/bewd.png?dl=1)

# Submitting homework

We use Git to track different versions of code (what the code is doesn't really matter; homework, your web application, etc). One way to accomplish this goal would just to make backups of a folder every day - but that's a huge pain and it's very easy to forget to do. Enter Git: A command line utility that allows you to "commit" code to a timeline. This is useful for a few reasons:

1. You can easily see who contributed what code and when
2. If something gets really messed up, you can simply revert your code to a different point in time
3. It allows you to branch out into different features, all while never breaking the core functionality
4. It allows people to collaborate on code

We're doing the same thing with homework, you'll want to follow these steps:

1. Make sure that you're in the right directory in terminal. The command you would run is: `cd ~/Sites/BEWD_NYC_13` (without the quotes). If you're working on homework, you'll probably want to cd into your particular named folder too, e.g. `cd ~/Sites/BEWD_NYC_13/brooks_swinnerton`
2. Once you're inside the right folder, let's check to see what the current status of `Git` is. To do this, we can run `git status`. A few things may or may not come up. If you changed a file since the last time that you committed something to the timeline (aka git), then that means that it isn't committed. Git is intelligent enough to see that you changed the file, but it leaves the actual committing process up to you. If you have uncommitted changes, you'll see a message that says "nothing added to commit but untracked files present (use "git add" to track)". Let's do that (assuming you've changed the files inside this folder).
3. To add the file, run `git add path/to/file` (e.g. `git add favorite_website.txt`). This adds the file to the "stage", it basically queue's this file up to be committed, but doesn't actually commit it. This is beneficial because most of the time you'll want to add some particular files, but not others. Imagine that you have one file that handles one piece of functionality and another file that a completely different piece. You probably don't want to commit them at the same time because they aren't related.
4. Once the files have been staged, if you run `git status` again, it'll say "Changes to be committed". Now's the time that you can actually commit them. You'll want to run `git commit -m "A message describing what you did in the code"` (obviously replacing the placeholder text I have there).
5. Cool. Now you've committed the code, it's on the timeline (aka git) but it only lives on your personal computer. Enter GitHub. GitHub is a website that has built a business on top of Git and allows users to share code using the Git architecture. This is how Joe and Mike will be grading your homeworks, because we need a way to access your timeline. To push your code to GitHub, you'll want to run `git push origin master`, where origin refers to the remote (the address of how to get to GitHub) and master refers to the branch (which we may or may not get into at a later point).
6. Once you've pushed the code to GitHub, the next step is to "offer" your code to Joe and Mike through something called a pull request. This pull request is a way of proposing changes to code. This may seem a little confusing - why are you offering code? Well, the reason is because you originally stole this code from us (that's the cool part about GitHub, you can grab open source code). Remember when you first ran `git clone https://github.com/YOUR_NAME_HERE/BEWD_NYC_13`? You "forked" the repository that the instructional team made. Then you made changes to your forked version. The final step is to propose your code changes back to our repository (also known as the `instructor` remote). To do this, you have to submit a pull request, which hopefully these screen shots will help with:  
![Step\ 1](http://i.imgur.com/IaiZ6DN.png)  
Then:  
![Step\ 2](http://i.imgur.com/zKrw6Z6.png)  
Then:  
![Step\ 3](http://i.imgur.com/tYtHgxO.png)  
7. And that's it! The instructor team will get a notification that there's a new pull request. We'll then make comments to it, and if it looks good, "merge" it back into our version of the code (the upstream remote).

There's one quick caveat. Imagine that one of your classmates gets their code merged in, or better yet, maybe Joe, Mike or I update some of the homework assignments / classwork. Our upstream repository (aka timeline) differs from yours. Because of this, at the beginning of every class, you should probably pull down the latest version of the code. You can do that by typing the following: `git pull --rebase instructor master`. You should also update your origin after you've pulled from upstream. You can do so by typing `git push -f instructor master`.

====

TL;DR these are the commands you'll want to run to submit homework:

```bash
cd ~/Sites/BEWD_NYC_13/
git add .
git commit -m "A description of what this commit is"
git push origin master
```

And then submit the pull request, here: [http://github.com/ga-students/BEWD\_NYC\_13](http://github.com/ga-students/BEWD_NYC_13)
