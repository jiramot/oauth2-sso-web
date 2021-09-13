import {AdminResource} from '../../services'

export default {
  data() {
    return {
      cif: ''
    }
  },
  methods: {
    login: function () {
      let code = this.$route.query.challenge_code
      AdminResource.acceptLoginRequest(code, this.cif)
    }
  }
}
