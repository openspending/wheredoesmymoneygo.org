Where Does My Money Go?
=======================

`Where Does My Money Go?`_ aims to promote transparency and citizen engagement through 
the analysis and visualisation of information about UK public spending. The site was
launched in 2009 and merged with `OffenerHaushalt`_ in 2010 to form the `OpenSpending`_
project, which tracks government finance from around the world. Where Does My Money 
Go continues to exist as a sub-project with a focus on the United Kingom.

.. _`Where Does My Money Go?`: http://wheredoesmymoneygo.org
.. _`OffenerHaushalt`: http://offenerhaushalt.de
.. _`OpenSpending`: http://openspending.org

What is in this repository?
---------------------------

Where Does My Money Go runs as an application on top of `OpenSpending`_. All data is
stored in the platform and the visualizations and search are driven directly from
its `API`_. As well as providing the source code for the WDMMG live site, this code
base is also intended as an example on which other OpenSpending apps can be
derived.

.. _`OpenSpending`: http://openspending.org
.. _`API`: http://openspending.org/help/api.html


How do I make a budget site for my own country/region?
------------------------------------------------------

If you want to set up a budget monitoring site for your own country, you first need
to acquire some budgetary or spending data and `load it into OpenSpending`_ using the 
site's web interface. Once the data is loaded, you can fork this repository and 
change the titles, styles and arrangement to meet your individual needs. Finally,
you can either host the site yourself, or let `GitHub Pages`_ do it.

.. _`load it into OpenSpending`: http://wiki.openspending.org/Loading_into_OpenSpending
.. _`GitHub Pages`: http://pages.github.com/
