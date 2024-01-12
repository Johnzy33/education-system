use serde::{Deserialize, Serialize};
use surrealdb::engine::remote::ws::Ws;
use surrealdb::opt::auth::Root;
use surrealdb::sql::Thing;
use surrealdb::Surreal;

//! This will be rewritten to connect to the hosting server database
pub fn database() -> surrealdb::Result<()>{
    // connect to the server
    let db = Surreal::new<Ws>("0.0.0.0:8000").await?;
}