const UserModel = require('../model/user.model');

class UserService{
    static async registerUser(email, password) {
        try{
            const creatUser = new UserModel({email, password});
            return await creatUser.save();
        }
        catch(err) {
            throw err;
        }
    }
}

module.exports = UserService;