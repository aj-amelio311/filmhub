const express = require("express");
const dbString = require("../config.json");

const {MongoClient} = require("mongodb");
const connectionString = dbString.connectionString;
let db;
let movies;
MongoClient.connect(connectionString, { useNewUrlParser: true }, (err, client) => {
  db = client.db("movie_app");
  movies = db.collection("queue")
})

let api = express.Router();

api.get("/check_queue/:userId/:movieId", (req, resp) => {
    const userId = req.params.userId;
    const movieId= parseInt(req.params.movieId);
    try {
      movies.find({$and: [{"id": movieId},{"user_id": userId}]}).toArray().then((results) => {
        if (results.length > 0) {
          resp.send({
            "status_code": 200,
            "response": true
          })
        } else {
          resp.send({
            "status_code": 200,
            "response": false
          })
        }
      })
    } catch(error) {
      resp.send(error)
    }
})

module.exports = api;
