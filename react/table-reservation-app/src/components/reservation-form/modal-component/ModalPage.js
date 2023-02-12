import { useState } from "react";

import Modal from "./Modal";

const ModalPage = () => {
  const [showModal, setShowModal] = useState(false);

  const handleClick = () => {
    setShowModal(true);
  };

  const handleClose = () => {
    setShowModal(false);
  };

  const actionBar = <div><button onClick={handleClose}>I Accept</button></div>;
  const modal = <Modal onClose={handleClose} actionBar={actionBar}>
    <p>
      Here is an important agreement for you to accept
    </p>
  </Modal>
  return(
    <div className='relative'>
      <button onClick={handleClick} primary >Open Modal</button>
      {showModal && modal}
    </div>
  );
}

export default ModalPage;