part of app;

@app.Group("/api/${VERSION}/users")
class Users extends MongoDbService<User> {
  Users() : super("users");

  @app.Route("/list")
  Future<List<User>> list() => find();

  @app.Route("/:id")
  @Encode()
  Future<User> one(String id) => findOne(where
      .id(ObjectId.parse(id))); // TODO? Refactor into extended MongoDbService

  @app.Route("/add", methods: const [app.POST])
  Future<Response> add(@Decode() User user) async {
    try {
      await insert(user);
      // .insert() returns a Map (representing the aknowledgement of the write)
      // Throws a MongoError if something bad happens
      return new Response.ok("User ${user.email} was added");
    } on MongoDartError {
      return new Response.internalServerError(body: "Couldn't add the user");
    }
  }
}
