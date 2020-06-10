class SettingsController {
    registerStat(data) {
        return new Promise((resolve, reject) => { axios.post('http://192.168.1.29:3000/stats/Register',data).then(function(success) {
            console.log(success);
            resolve(success.data);
        }).catch(function(err){
            console.log(err);
            reject(err);
        })
        });
    }
}
