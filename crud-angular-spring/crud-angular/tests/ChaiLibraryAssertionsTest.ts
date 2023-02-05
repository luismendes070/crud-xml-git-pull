import * as chai from 'chai';
import chaiHttp = require('chai-http');

const url: string = "https://www.localhost:4200/api/cursos";
const path: string = "https://www.localhost:4200/api/cursos";
const data: string = "https://www.localhost:4200/api/cursos";

chai.use(chaiHttp);

chai
  .request(url)
  .put(path)
  .send(data)
  .end((err, res) => {
    expect(err).to.be.null;
    expect(res).to.have.status(200);
    // additional assertions for response data
  });

  chai
    .request(url)
    .post(path)
    .send(data)
    .end((err, res) => {
      expect(err).to.be.null;
      expect(res).to.have.status(201);
      // additional assertions for response data
    });
