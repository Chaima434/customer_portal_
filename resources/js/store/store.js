import { createStore } from 'vuex'

// Create a new store instance.
const store = createStore({
  state: {
    status: '',
    token: localStorage.getItem('token') || '',
    client : {},
    error : '',
    apps : {},
  },
  mutations: {
    auth_request(state){
      state.status = 'loading'
    },
    auth_success(state, token){
      state.status = 'success'
      state.token = token
    },
    set_client(state,client){
      state.client = client
    },
    set_apps(state,apps){
      state.apps = apps
    },    
    handle_error(state,error){
      state.error = error
    },
    logout(state){
      state.status = ''
      state.token = ''
    },
  },
  actions: {
    login({commit}, client){
      return new Promise((resolve, reject) => {
        commit('auth_request')
        axios({url: 'api/auth/client/login', data: client, method: 'POST' })
        .then(resp => {
          const token = 'Bearer '+resp.data.token
          const client = resp.data.client
          localStorage.setItem('token', token)
          axios.defaults.headers.common['Authorization'] = token
          commit('auth_success', token, client)
          commit('set_client',client)
          commit('handle_error', '')
          resolve(resp)
        })
        .catch(err => {
          localStorage.removeItem('token')
          reject(err)
        })
      })
  },
    Register({commit}, client){
      return new Promise((resolve, reject) => {
        commit('auth_request')
        axios({url: '/api/auth/client/insert', data: client, method: 'POST' })
        .then(resp => {
          const token = 'Bearer '+resp.data.token
          const client = resp.data.client
          localStorage.setItem('token', token)
          axios.defaults.headers.common['Authorization'] = token
          commit('auth_success', token, client)
          commit('handle_error', '')
          resolve(resp)
        })
        .catch(error => {
          localStorage.removeItem('token')
          reject(error)
        })
      })
    },
    logout({commit}){
      return new Promise((resolve, reject) => {
        commit('logout')
        localStorage.removeItem('token')
        delete axios.defaults.headers.common['Authorization']
        resolve()
      })
    },
    getApps({commit}){
      return new Promise((resolve, reject) => {
        axios({url:'/api/auth/me',method:'GET'}).then(res =>{
          const idClient = res.data.id
          axios({url:'/api/get/applicaton/'+idClient,method:'GET'}).then(res =>{
            commit('set_apps',res.data.apps)
            resolve(res)
          })
        })
        
      }); 
    },
    getClient({commit}){
      return new Promise((resolve, reject) => {
        axios({url:'/api/auth/me',method:'GET'}).then(res =>{
          commit('set_client',res.data)
          resolve(res)
        })
      }); 
    },
  },
  getters : {
    isLoggedIn: state => !!state.token,
    authStatus: state => state.status,
    getClient: state=> state.client,
    getApps: state=> state.apps,
    getError: state=> state.error,    
  }
})
export default store
// Install the store instance as a plugin
