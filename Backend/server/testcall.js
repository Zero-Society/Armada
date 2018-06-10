Eos = require('eosjs')

// import EOS from 'eosjs'

// eos = EOS.Localnet({
//   keyProvider: ['5KHdU9ca7wQWmY1EbYssYDxPAtmXEF7nKYkMnZFdFDo4vCENdqa']})

// eos.contract('check').then((contract) => {
//   contract.hi("Kent", { authorization: ['user'] }).then((res) => {
//     console.log(res)
//   })
// })



keyProvider = [
	'5KHdU9ca7wQWmY1EbYssYDxPAtmXEF7nKYkMnZFdFDo4vCENdqa']

eos = Eos({keyProvider})


eos.contract('check').then(check => {
	check.hi("Kent", {authorization: ['user'] }).then((res) => {
		console.log(res)
	})
})
