import { defineElements } from './elements'
import CableReadyElement from './elements/cable_ready_element'

const initialize = (initializeOptions = {}) => {
  defineElements()
}

export {
  CableReadyElement,
}

const global = {
  initialize,
  CableReadyElement
}

export default global
