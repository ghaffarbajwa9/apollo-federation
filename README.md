# Apollo Federation Integrated in Ruby
## To host it locally follow the procedure.
* git clone https://github.com/ghaffarbajwa9/apollo-federation.git
* cd apollo-federation
* cd articles_api
* rails s -p 3001
* open new terminal 
* go into user_api folder that is in main apollo-federation folder
* rails s -p 3000
* open new terminal
* go into gateway folder that is in main apollo-federation folder
* node index.js
* send graphql queries on http://localhost:4000 in postman