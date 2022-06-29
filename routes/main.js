module.exports = function(app) {
    app.get("/", function(req, res){
        res.render('index.html');
    });
    app.get("/search", function(req, res){
        res.render('search.html');
    });
    app.get("/about", function(req, res){
        res.render('about.html');
    })
    app.get("/search-result", function(req, res){
        res.send(req.query);
    })
    app.get("/register", function(req, res){
        res.render('register.html');
    })
    app.post("/registered", function(req, res){
        res.send("Hello " + req.body.first + " " + req.body.last + " " + req.body.other + ", you are now registered!");
    })
    app.get("/addbook", function(req, res){
        res.render('register.html');
    })
    app.post("/added", function(req, res){
        res.send("Hello " + req.body.first + " " + req.body.last + " " + req.body.other + ", you are now registered!");
    })
    app.get("/list", function(req, res){
        // query database
        let sqlquery = "SELECT * FROM books";
        // execute sql query
        db.query(sqlquery, (err, result) => {
            if (err) {
                res.redirect("/");
            }
            res.render("list.html", {availableBooks: result});
        });
    });
};