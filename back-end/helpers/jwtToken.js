const jwt = require('jsonwebtoken');
const dotenv = require('dotenv');

dotenv.config();

const jwtToken = (data) => {
    const secretpass = 'topsecret123';
    const jwtConfig = {
        expiresIn: '10h',
        algorithm: 'HS256',
    }

    const token = jwt.sign({ data }, secretpass, jwtConfig);
    return token;
};

module.exports = jwtToken;