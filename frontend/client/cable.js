import ActionCable from "actioncable";

let consumer;

function createChannel(...args) {
  if (!consumer) {
    consumer = ActionCable.createConsumer();
  }

  return consumer.subscriptions.create(...args);
}

export default createChannel;
