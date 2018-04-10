# <code>conda</code> Cheatsheet

## Why Anaconda?

- Installing Python from scratch is no joy
- Many scientific packages require a specific version of Python or R along with many dependencies
- It's hard to keep packages from interacting with each other, and harder to keep them all updated
- Anaconda makes getting and maintaining all these packages quick and easy

## What is Anaconda?

The open source version of Anaconda is an easy-to-install high performance Python and R distribution with:
- A package manager
- An environment manager
- A collection of 720+ open source packages with free community support

## What is Miniconda?

- It's Anaconda without the collection of 720 open source packages
- With Miniconda you download only the packages you want with the conda command <code>$ conda install PACKAGENAME</code>

## Environment Support

- Anaconda: Windows, OS X or Linux, 32- or 64-bit, 400 MB HD available
- Miniconda: Same but needs only 3 MB HD

## Top 10 Packages

Each package can be installed individually with <code>$ conda install PACKAGENAME</code>

- [**NumPy**](http://numpy.org): N-dimensional array for numerical computation
- [**SciPy**](http://scipy.org): Collection of numerical algorithms and toolboxes, including signal processing and optimization
- [**MatPlotLib**](http://matplotlib.org): Plotting library for Python
- [**Pandas**](http://pandas.pydata.org): Powerful Python data analysis toolkit
- [**Seaborn**](http://stanford.edu/~mwaskom/software/seaborn/): Statistical data visualization
- [**Bokeh**](http://bokeh.pydata.org): Interactive web visualization library
- [**SciKit-Learn**](http://scikit-learn.org/stable): Python modules for machine learning and data mining
- [**NLTK**](http://nltk.org): Natural Language ToolKit
- [**Jupyter Notebook**](http://jupyter.org): Web-based interactive computational environment combines code execution, rich text, mathematics, plots and rich media
- [**R essentials**](http://conda.pydata.org/docs/r-with-conda.html): R with 80+ of the most used R packages for data science: <code>$ conda install -c r r-essentials</code>

## Commands

<table>
  <thead>
    <th colspan=2>For Managing Conda</th>
  </thead>
  <tbody>
    <tr>
      <td><code>$ conda [command] --help</code></td>
      <td>Get full documentation for any command</td>
    </tr>
    <tr>
      <td><code>$ conda info</code></td>
      <td>Verify conda version number</td>
    </tr>
    <tr>
      <td><code>$ conda update conda</code></td>
      <td>Update conda package and environment manager</td>
    </tr>
    <tr>
      <td><code>$ conda update anaconda</code></td>
      <td>Update the anaconda meta package<br>(the library of packages ready to install with `conda` command)</td>
    </tr>
  </tbody>
</table>
  
<table>
  <thead>
    <th colspan=2>For Managing Envs</th>
  </thead>
  <tbody>
    <tr>
      <td><code>$ conda info --envs</code></td>
      <td>Get a list of all my environments. Active environment is shown with `*`</td>
    </tr>
    <tr>
      <td><code>$ conda create --name [envname] [programname]</code></td>
      <td>Create an environment and install program(s).<br>To avoid dependency conflicts, install all programs in the environment at the same time.<br>Environments install by default into the <code>envs</code> directory.</td>
    </tr>
    <tr>
      <td><code>$ source activate [envname]</code></td>
      <td>Activate the new environment to use it</td>
    </tr>
    <tr>
      <td><code>$ conda create -n [envname] python=3.4 [programname]</code></td>
      <td>Create a new environment with a specific Python version</td>
    </tr>
    <tr>
      <td><code>$ conda create -n [newenvname] --clone [oldenvname]</code></td>
      <td>Make exact copy of an environment</td>
    </tr>
    <tr>
      <td><code>$ conda remove -n [envname] --all</code></td>
      <td>Delete an environment</td>
    </tr>
    <tr>
      <td><code>$ conda env export > filename.yml</code></td>
      <td>Save current environment to a file</td>
    </tr>
    <tr>
      <td><code>$ conda env create -f filename.yml</code></td>
      <td>Load/create an environment from a saved file</td>
    </tr>
  </tbody>
</table>

<table>
  <thead>
    <th colspan=2>For Managing Python</th>
  </thead>
  <tbody>
    <tr>
      <td><code>$ conda search --full-name python</code></td>
      <td>Check versions of Python available to install</td>
    </tr>
    <tr>
      <td><code>$ conda create -n [envname] python=3.4</code></td>
      <td>Install a different version of python in a new environment</td>
    </tr>
    <tr><td colspan=2><strong>MANAGING <code>.CONDARC</code> CONFIG FILE</strong></td></tr>
    <tr>
      <td><code>$ conda config --get</code></td>
      <td>Get all keys and values from my <code>.condarc</code> file</td>
    </tr>
    <tr>
      <td><code>$ conda config --get channels</code></td>
      <td>Get value of the key channels from .condarc file</td>
    </tr>
    <tr>
      <td><code>$ conda config --add channels pandas</code></td>
      <td>Add a new value to channels so conda looks for packages in this location</td>
    </tr>
  </tbody>
</table>
    
<table>
  <thead>
    <th colspan=2>For Managing Packages, Including Python</th>
  </thead>
  <tbody>  
    <tr>
      <td><code>$ conda list</code></td>
      <td>View list of packages and versions installed in active environment</td>
    </tr>
    <tr>
      <td><code>$ conda search [packagename]</code></td>
      <td>Search for a package to see if it is available to conda install</td>
    </tr>
    <tr>
      <td><code>$ conda install -n [envname] [packagename]</code></td>
      <td>Install a new package<br>(If you do not include the name of the new environment,<br>it will install in the current active environment.</td>
    </tr>
    <tr>
      <td><code>$ conda update [packagename]</code></td>
      <td>Update a package in the current environment</td>
    </tr>
    <tr>
      <td><code>$ conda search --override-channels -c pandas [packagename]</code></td>
      <td>Search for a package in a specific location<br>(the pandas channel on Anaconda.org)</td>
    </tr>
    <tr>
      <td><code>$ conda install -c pandas [packagename]</code></td>
      <td>Install a package from a specific channel</td>
    </tr>
    <tr>
      <td><code>$ conda search --override-channels -c defaults [packagename]</code></td>
      <td>Search for a package to see if it is available<br>from the Anaconda repository</td>
    </tr>
    <tr>
      <td><code>$ source activate [envname] $ pip install [packagename]</code></td>
      <td>Activate the environment where you want to install<br>a package and install it with pip<br>(included with Anaconda and Miniconda)</td>
    </tr>
  </tbody>
</table>
    
<table>
  <thead>
    <th colspan=2>For Removing Packages, Envs, or Channels</th>
  </thead>
  <tbody>   
    <tr>
      <td><code>$ conda remove --name [envname] [packagename]</code></td>
      <td>Remove one package from any named environment</td>
    </tr>
    <tr>
      <td><code>$ conda remove [packagename]</code></td>
      <td>Remove one package from the active environment</td>
    </tr>
    <tr>
      <td><code>$ conda remove --name [envname] [packagename] [packagename]</code></td>
      <td>Remove multiple packages from any environment</td>
    </tr>
    <tr>
      <td><code>$ conda remove --name [envname] --all</code></td>
      <td>Remove an environment</td>
    </tr>
  </tbody>
</table>
