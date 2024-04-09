db.collection('libre-firebase')
    .get()
    .then(
        (snapshot)=>{
            // console.log(snapshot.docs)
            snapshot.docs.forEach(doc => {
                console.log(doc.data());
            });
        }
    )