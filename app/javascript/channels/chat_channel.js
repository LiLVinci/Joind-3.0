// import consumer from "./consumer"

// consumer.subscriptions.create("ChatChannel", {
//   connected() {
//     // Called when the subscription is ready for use on the server
//   },

//   disconnected() {
//     // Called when the subscription has been terminated by the server
//   },

//   received(data) {
//     // Called when there's incoming data on the websocket for this channel
//   }
// });

import consumer from "./consumer";

const initChatCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatId;

    consumer.subscriptions.create({ channel: "ChatChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
        console.log(data)
      },
    });
  }
}

export { initChatCable };

// consumer.subscriptions.create({ channel: "ChatChannel", id: id }, {
//   received(data) {
//     messagesContainer.insertAdjacentHTML('beforeend', data);
//   }
// });

