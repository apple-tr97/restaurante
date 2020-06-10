class SignupController {
    signupAthlete(data) {

        console.log("Hello there " + axios.post);

        return new Promise((resolve, reject) => { axios.post('http://192.168.1.29:3000/register/athlete',data).then(function(success) {
                console.log(success);
                resolve(success.data);
            }).catch(function(err){
                console.log(err);
                reject(err);
            })
        });
    }

    signupCoach(data) {

        console.log("Hello there " + axios.post);

        return new Promise((resolve, reject) => { axios.post('http://192.168.1.29:3000/register/coach',data).then(function(success) {
            console.log(success);
            resolve(success.data);
        }).catch(function(err){
            console.log(err);
            reject(err);
        })
        });
    }
}

//module.exports = LoginController
