export default new class AdminResource {

  acceptLoginRequest(url, code, cif) {
    console.log(`accept login request with code=${code}, cif=${cif}`)
    let data = {"cif": cif}
    fetch(`${url}/oauth2/auth/request/login/accept?login_challenge=${code}`,
      {
        method: "POST",
        body: JSON.stringify(data),
        headers: {
          'Content-Type': 'application/json'
        },
      },)
      .then(res => res.json())
      .then(data => {
        window.location.href = data.redirect_url
      })
  }
}

