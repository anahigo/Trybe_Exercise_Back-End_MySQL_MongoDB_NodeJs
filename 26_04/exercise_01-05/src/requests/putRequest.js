module.exports= {
  async editUser(request, response) {
    const { name, age } = request.body;

    return response.status(200).json({ "message": `Seu nome é ${name} e você tem ${age} anos de idade` })
  }
}