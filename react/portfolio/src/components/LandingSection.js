import React from "react";
import { Avatar, Heading, VStack, HStack } from "@chakra-ui/react";
import FullScreenSection from "./FullScreenSection";

const greeting = "Hello, I am Vladimir!";
const bio1 = "A frontend developer";
const bio2 = "specialised in React";

// Implement the UI for the LandingSection component according to the instructions.
// Use a combination of Avatar, Heading and VStack components.
const LandingSection = () => (
  <FullScreenSection
    justifyContent="center"
    alignItems="center"
    isDarkBackground
    backgroundColor="#2A4365"
  >
    <VStack style={{ margin: '2em', alignItems: 'center' }}>
      <VStack style={{ marginBottom: '2em', alignItems: 'center' }}>
        <Avatar size="2xl" name="Vladimir Solovyov" src="https://avatars.githubusercontent.com/u/53788781?v=4" />
        <Heading as='h4' size='md' textAlign='center'>{`${greeting}`}</Heading>
      </VStack>
      <VStack style={{ alignItems: 'center'}}>
        <Heading as='h3' size='xl' textAlign='center'>{`${bio1}`}</Heading>
        <Heading as='h3' size='xl' textAlign='center'>{`${bio2}`}</Heading>
      </VStack>
    </VStack>
    

  </FullScreenSection>
);

export default LandingSection;
