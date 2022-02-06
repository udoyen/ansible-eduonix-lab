1. Chef requires a central server to run
2. Used for enterprise deployment of thousands of servers
3. Chef works in two modes solo (for single machine), and server (for multiple machines).
4. Chef solo is installed using a package and the same is done with chef server
5. Supported on more operating systems than ansible and also on Windows (which isn't supported on Windows)
6. Chef uses:
    - Recipes: configurations for the target machine
    - Cookbook: holds recipes
    - Node: target machine
    - Workstation: machine from which you instruct the chef server to carry out a command via the chef api
    - Knife: used to instruction the chef server to add nodes, cookbooks, and recipes from the workstation.
7. Chef language is ruby.
8. Chef server contains an API service that you interact with using the client tool knife tool. It uses the RabbitMQ to provide a communication channel with it's API.
    - Contains:
      - PostgreSQL
      - Solr: search service from apache
      - Web based management console for interaction with the API.
9. Chef server cannot be installed on a Mac or Windows machine, only on Linux.
10. Apache conflicts with chef and should be stopped or configured to use other ports
11. Use nginx as the web server.
12. Chef solo uses the following:
  - node.json file: instructs it about the run list (note this file can be called anything)
  - configuration file: supplies several settings
  - Cookbook: contains recipes
13. 
