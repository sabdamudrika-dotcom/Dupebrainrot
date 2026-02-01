(function () {
    const ITEM_NAME = "brainrot";

    function hasBrainrot() {
        return player.inventory && player.inventory.includes(ITEM_NAME);
    }

    function createDupeButton() {
        if (document.getElementById("dupe-btn")) return;

        const btn = document.createElement("button");
        btn.id = "dupe-btn";
        btn.innerText = "DUPE";
        btn.style.position = "fixed";
        btn.style.top = "12px";
        btn.style.right = "12px";
        btn.style.padding = "10px 14px";
        btn.style.fontSize = "14px";
        btn.style.zIndex = "99999";
        btn.style.borderRadius = "10px";
        btn.style.border = "none";
        btn.style.background = "#ff3c3c";
        btn.style.color = "white";
        btn.style.fontWeight = "bold";

        btn.onclick = () => {
            player.addItem(ITEM_NAME, 1);
            console.log("Brainrot duplicated!");
        };

        document.body.appendChild(btn);
    }

    function removeDupeButton() {
        const btn = document.getElementById("dupe-btn");
        if (btn) btn.remove();
    }

    setInterval(() => {
        if (hasBrainrot()) {
            createDupeButton();
        } else {
            removeDupeButton();
        }
    }, 500);
})();
