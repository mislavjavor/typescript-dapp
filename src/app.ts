import { Storage } from "../types"
import { W3 } from "soltsice"

let w3: W3 = new W3();
W3.default = new W3();

Storage.deployed().then((instance) => {
    alert(instance.address);
})
