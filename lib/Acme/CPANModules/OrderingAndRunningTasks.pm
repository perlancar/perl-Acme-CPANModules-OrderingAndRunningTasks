package Acme::CPANModules::OrderingAndRunningTasks;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $LIST = {
    summary => 'List of modules/tools to order multiple tasks (with possible interdependency) and running them (possibly in parallel)',
    description => <<'_',

This list reviews what tools are available on CPAN and in general to order
multiple tasks (with possible interdependency) and running them (possibly in
parallel).

To specify dependency, you can use a graph then do a topological sort on it.
This will make sure that a task that depends on another is executed after the
latter. This will also check circular dependencies: if there is a circular
dependency, the graph becomes cyclical and will fail to sort topologically.
There are several modules to do topological sorting, among them: <pm:Graph>,
<pm:Data::Graph::Util>, <pm:Sort::Topological>. There's also
<pm:Algorithm::Dependency>.

To run tasks in parallel, you can also represent the tasks and dependencies
among them using a graph, then separate the connected subgraphs. The subgraphs
do not connect to one another and thus you can run the tasks in a subgraph in
parallel with tasks in another subgraph. These modules can search and return
connected subgraphs: <pm:Graph> (`connected_components` method),
<pm:Data::Graph::Util> (`connected_components` function).

Keyword: dependency ordering, parallel execution

_
    entries => [
        {
            module => 'Sub::Genius',
        },
    ],
};

1;
# ABSTRACT:

=head1 prepend:SEE ALSO
