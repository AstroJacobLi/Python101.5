

# Lecture 1: Setting up your computer -- Operating system, Git, SSH and Python

## Operating System

### Concepts
- Operating System: two categories -- Unix-based, and Windows
- Unix: operating files in a certain way. Linux, MacOS, etc.
- Shell: A Unix shell is a command-line interpreter or shell that provides a command line user interface for Unix-like operating systems.
- GUI (graphical user interface)
- Syntax and command line
- Terminal: Linux and Windows (e.g. [cmder](https://cmder.net)). Windows now supports bash. Convention: starting with ``$``.
- Bash: a Unix shell written for GNU project. (Bourne Again Shell = BASH). [Zsh v.s. Bash.](https://www.chenhuijing.com/blog/bash-to-zsh/#🎹) ``/bin/bash xxx``
- Directory: ``dir``

### Unix commands
- ``man ls``
- ``cd``: ``cd .``, ``cd ..``, ``cd ../..``, ``cd ~``, ``cd /``, ``cd ./xxx/xxxx``
- ``pwd``
- ``ls``: -lth, -S (size), -R (recursively), -d (list folders), -h (human-readable size), -t (time)
- ``mkdir``: never use empty space!
- ``mv``: rename file. -u (update), -v (verbose). ``mv file_name new_name new_location``.
- ``cp``: -R (recursively), -u (update), -i (interactive), -f (forced)
- ``rm``: -r (recursively), -f (forced). Be cautious with ``rm -rf xxx``.
- control + C, control + Z, command + K, command + L
- ``sudo`` (not Subo)
- Wildcard ``*``
- ``cat`` (concatenate): print out file content. ``cat file1 file2 > file3``.
- ``wc`` (word count): lines, words, characters. ``wc -l`` only prints out lines.
- ``ps`` (process): ``ps -aux``
- ``>``: ``ls -lht > directory.txt``

### [Unix file permissions](https://www.zzee.com/solutions/linux-permissions.shtml)
``-rwxr--r--``

File,
owner has read, write, execute permissions,
group: only read and execute permissions,
others: only read and execute permissions. 

- For the owner:
``chmod +rwx filename`` to add permissions.
``chmod -wx filename`` to remove write and executable permissions.
- For group members:
``chmod g+rwx filename`` to add permissions.
- For other users:
``chmod o-wx filename`` to remove write and executable permissions.

- Numerical expression: binary numbers

![linux-file-permission](https://github.com/AstroJacobLi/Python101.5/raw/master/Lecture1/linux-file-permission.png)

### More on Bash
``~/.bash_rc`` or ``~/.bash_profile``: config file of bash. 
``~/.bash_history``: history of bash. 

#### Alias
Alias makes your life better!

``$ alias`` prints out all aliases defined. 

Write in ``.bash_profile``: ``alias show_pid='ps aux | grep ssh'``

No spaces around "="!!! Don't forget to validate changes by ``source ~/.bash_profile`` or ``. ~/.bash_profile``.

#### [``grep``](https://www.geeksforgeeks.org/grep-command-in-unixlinux/)
Searching for particular strings.

Syntax: ``grep [options] pattern [files]``

Options:
**-c : This prints only a count of the lines that match a pattern.**
-h : Display the matched lines, but do not display the filenames.
**-i : Ignores, case for matching**
**-l : Displays list of a filenames only.**
**-n : Display the matched lines and their line numbers.**
-v : This prints out all the lines that do not matches the pattern
-e exp : Specifies expression with this option. Can use multiple times.
-f file : Takes patterns from file, one per line.
-E : Treats pattern as an extended regular expression (ERE)
**-w : Match whole word**
-o : Print only the matched parts of a matching line, with each such part on a separate output line.

``grep -c permission lec.txt``

``grep -i permission lec.txt``

``grep -il 'unix' *``

``grep -w 'per' *``

``grep -i '^per' *``


#### Pipe
``cat dir.txt | grep 'python' | wc -l``


### SSH
The ``ssh`` command provides a secure encrypted connection between two hosts over an insecure network. This connection can also be used for terminal access, file transfers, and for tunneling other applications. It supports public-key cryptography.

[``rsync``](https://linux.die.net/man/1/rsync): ``rsync -avzh --progress jiaxuanli@kungpao.ucsc.edu:/Users/jiaxuanli/Documents/image.fits ./`` . -a: archive mode; -v: verbose; -z: compressed; -h: human-readable; --progress: show progress bar.

``scp``: secure copy. ``scp -r -C jiaxuanli@kungpao.ucsc.edu:/Users/jiaxuanli/Documents/images.fits ./``. -r: recursively; -C: compressed.

### ``vi`` and ``vim``
Steep learning curve. [Interactive learning vim](https://openvim.com)

Common usage: ``:q, :w, :wq, :q!, h, j, k, l, w, b, e, u, ctrl+R``

``vim`` [cheatsheet](https://vim.rtorr.com)

## Git
Git is a distributed version-control system for tracking changes in source code during software development.

Reference: [Git tutorial](http://marwahaha.github.io/2015-07-09-berkeley/git/), [Set SSH on GitHub](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent), [``git`` cheat sheet](https://github.github.com/training-kit/downloads/github-git-cheat-sheet.pdf).

## Python
Pros: high level, open-source, widely used, countless third-party packages in various areas, large and active community, ML/DL.

Cons: Slow? (Cython)

![compile-process](https://github.com/AstroJacobLi/Python101.5/raw/master/Lecture1/compile-process.png)

#### Installation
Anaconda: https://www.anaconda.com; 清华镜像: https://mirrors.tuna.tsinghua.edu.cn.
Pip: https://pip.pypa.io/en/stable/.

#### Hello world

#### IDEs and Jupyter
Editors: Atom (x, too heavy), Vi/Vim (cantankerous), sublime text (good, but ask for money), Visual Studio Code (best so far).

IDEs: PyCharm (x), Spyder (could check variables, but in a "scriptive" way).

Best choice: VSCode + [Jupyter](https://jupyter.org)! Jupyter = julia + python + terminal.

``jupyter notebook``, ``jupyter lab``.

[Jupyter extensions](https://github.com/ipython-contrib/jupyter_contrib_nbextensions), [Jupyter notebook viewer](https://nbviewer.jupyter.org), some shortcuts.


![The-Outsourcing-Learning-Curve](https://github.com/AstroJacobLi/Python101.5/raw/master/Lecture1/The-Outsourcing-Learning-Curve.png)

Life of a programmer:

![jakevdp](https://github.com/AstroJacobLi/Python101.5/raw/master/Lecture1/jakevdp.png)



## Homework

1. register an account in Beida cluster; connect using SSH; try file permissions.
2. [Regular Expression](https://github.com/ziishaned/learn-regex)
3. Jake VanderPlas: http://jakevdp.github.io; **Python data science book**: https://github.com/jakevdp/PythonDataScienceHandbook