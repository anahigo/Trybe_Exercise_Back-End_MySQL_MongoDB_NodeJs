const fs = require("fs").promises;
const path = require("path");

const readSimpsonsFile = async () => {
  const content = await fs.readFile(path.resolve(__dirname, '.', 'simpsons.json'));
  return JSON.parse(content.toString('utf-8'));
};

const writeSimpsonsFile = async (content) => (
  fs.writeFile(
    path.resolve(__dirname, '.', 'simpsons.json'),
    JSON.stringify(content),
    (err) => {
      if (err) throw err;
    }
  ));

module.exports= {
  async write(request, response) {
    const { id, name } = request.body;

    if (!id || !name) return response.status(400).json({ message: "missing data" });

    const oldSimpsons = await readSimpsonsFile();

    const hasCharacter = oldSimpsons.some(character => character.id === id);

    if (hasCharacter) return response.status(400).json({ message: "id duplicated!" });
  
    const newArrayOfSimpsons = [...oldSimpsons, { id, name }];

    await writeSimpsonsFile(newArrayOfSimpsons);

    return response.status(200).json({ message: "character created!" });
  }
}