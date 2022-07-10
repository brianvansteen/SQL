module.exports = function(app) {
    app.get("/", function(req, res){
        res.render('index.html');
    });

    app.get("/about", function(req, res){
        res.render('about.html');
    });

    app.get("/adddevice", function(req, res){
        res.render('adddevice.html');
    });

    app.post("/deviceadded", function(req, res){
        // saving data in the database
        let sqlquery = "INSERT INTO books (name, price) VALUES (?, ?)";
        // execute sql query
        let newrecord = [req.body.title, req.body.price];
        db.query(sqlquery, newrecord, (err,result) => {
            if (err) {
                return console.error(err.message);
            } else
            res.send("Hello, " + req.body.title + " " + req.body.price + " " + req.body.author + ", has been added to the list!");
        });

    });

    app.get("/control", function(req, res){
        res.render('control.html');
    });

    app.get("/deletedevice", function(req, res){
        res.render('deletedevice.html');
    });

    app.get("/search-result", function(req, res){
        res.send(req.query);
    });

    app.get("/search-result-db", function (req, res){
        //searching the database
        let word = [req.query.keyword];
        let sqlquery = "SELECT * FROM `books` WHERE name LIKE ?";
        //execute sql query
        db.query(sqlquery, word, (err,result) => {
            if (err) {
                return console.error(err.message);
                //return console.error ("No book has been found with the keyword you have entered: " + req.query.keyword);
                //res.redirect('/search');
            } else {
                res.render('list.html', {availableBooks:result})
            }
        })
    })
    app.get("/register", function(req, res){
        res.render('register.html');
    });
    app.post("/registered", function(req, res){
        res.send("Hello " + req.body.first + " " + req.body.last + " " + req.body.other + ", you are now registered!");
    });

    app.get("/status", function(req, res){
        // query database
        let sqlquery = "SELECT * FROM books";
        // execute sql query
        db.query(sqlquery, (err, result) => {
            if (err) {
                res.redirect("/");
            }
            res.render("status.html", {availableBooks: result});
        });
    });
};