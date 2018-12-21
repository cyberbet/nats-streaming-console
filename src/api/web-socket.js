import openSocket from 'socket.io-client'
const socket = openSocket(window.location.host)

export const subscribeToChannel = (channel, opts, cb) => {
  socket.on(channel, message => cb(message))
  socket.emit('subscribe-to-channel', { channel, opts })
}
