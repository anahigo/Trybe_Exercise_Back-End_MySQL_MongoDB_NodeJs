module.exports = {
  async postUser(request, response) {
    const { name, age } = request.body;

    if(parseInt(age) < 17) return response.status(401).json({ "message": `Unauthorized` })
    return response.status(200).json({"message": `Hello ${name}!`});
  }
}