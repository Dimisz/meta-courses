import { Heading, HStack, Image, Text, VStack } from "@chakra-ui/react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faArrowRight } from "@fortawesome/free-solid-svg-icons";
import React from "react";

const Card = ({ title, description, imageSrc }) => {
  // Implement the UI for the Card component according to the instructions.
  // You should be able to implement the component with the elements imported above.
  // Feel free to import other UI components from Chakra UI if you wish to.
  return(
    <VStack backgroundColor='white' borderRadius='1em'>
      <Image src={imageSrc} alt={description} borderRadius='1em'/>
      <Heading as='h3' size='lg' textColor='black' style={{ marginRight: 'auto', marginLeft: '.5em' }}>
        {title}
      </Heading>
      <Text fontSize='lg' textAlign='justify' textColor='black' style={{ paddingLeft: '1em', paddingRight: '1em' }}>
        {description}
      </Text>

      <Text fontSize='lg' textColor='black' style={{ marginRight: 'auto', marginLeft: '1em', marginBottom: '1em', fontWeight:'bold' }}>
        See more <FontAwesomeIcon icon={faArrowRight} size='1x' />
      </Text>
      
      
      
    </VStack>
  );
};

export default Card;
