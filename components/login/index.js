import {AdminResource} from '../../services'

export default {
  data: () => ({
    cif: '',
    endpoint: ''
  }),
  methods: {
    login() {
      let code = this.$route.query.login_challenge
      AdminResource.acceptLoginRequest(this.endpoint, code, this.cif)
    },
  },
  mounted() {
    // this.endpoint = this.$config.oauthAdminEndpoint
    console.log("login mount")
  }
}
