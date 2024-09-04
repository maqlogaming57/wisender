const express = require("express");
const cors = require("cors");
const axios = require("axios");
const https = require("https");
const { logger } = require("../lib/myf.velixs.js");
const { connectDatabase } = require("./database.js");
const { loadCommands } = require("../config/commands.js");
const routerApi = require("../routes/api.js");

class app {
    constructor() {
        this.app = express();
        this.plugins();
        this.routes();
        this.lv = "5.0.0";
    }

    plugins() {
        // Check version
        axios
            .get(
                "https://raw.githubusercontent.com/ilsyaa/lazy-version/master/walazy.json",
                {
                    httpsAgent: new https.Agent({
                        rejectUnauthorized: false,
                    }),
                }
            )
            .then((res) => {
                if (this.lv != res.data.version) {
                    logger(
                        "warning",
                        "[VERSION] NEW VERSION AVAILABLE: " + res.data.version
                    );
                    if (res.data.required_update) {
                        logger(
                            "warning",
                            "[VERSION] REQUIRED UPDATE: " + res.data.version
                        );
                        logger(
                            "warning",
                            "Contact Whatsapp Admin : 628574902345"
                        );
                        process.exit(0);
                    }
                }
            })
            .catch((e) => {
                logger("error", "[AXIOS] FAILED TO CHECK VERSION: " + e);
            });

        // CORS middleware
        this.app.use(
            cors({
                origin: "*",
                methods: "GET, POST, PUT, DELETE, OPTIONS",
                allowedHeaders:
                    "Origin, X-Requested-With, Content-Type, Accept",
            })
        );

        // Body parsers
        this.app.use(express.json());
        this.app.use(express.urlencoded({ extended: true }));

        // Connect to database and load commands
        connectDatabase();
        loadCommands();
    }

    routes() {
        this.app.use("/api", routerApi);
    }
}

module.exports = app;
