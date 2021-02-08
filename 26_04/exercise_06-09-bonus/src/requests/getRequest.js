const fs = require("fs").promises;
const path = require("path");

const readSimpsonsFile = async () => {
  const content = await fs.readFile(path.resolve(__dirname, '.', 'simpsons.json'));
  return JSON.parse(content.toString('utf-8'));
};

module.exports= {
  async message(request, response) {
    response.send("Hello");
    
    return response.status(200).json('Status 200 OK');
  },

  async read(request, response) {
    const file = await readSimpsonsFile();
    
    // console.log(readfile)
    return response.status(200).json(file);
  },

  async readID(request, response, next) {
    const file = await readSimpsonsFile();

    const id = Number(request.params.id);
    console.log(id)
    if(isNaN(id)) {
      return next({
        message: "Precisa ser um número",
        status: 404 
      })
    }
    
    const filteredCharacter = file.find(character => character.id === id.toString());

    return response.status(200).send(filteredCharacter);
  },

  async error(request, response) {
    // console.log("errou")
    return response.status(404).send("status 404 Not Found");
  }
}