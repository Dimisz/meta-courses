import React, { useEffect, useRef } from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faEnvelope } from "@fortawesome/free-solid-svg-icons";
import {
  faGithub,
  faLinkedin,
  faMedium,
  faStackOverflow,
} from "@fortawesome/free-brands-svg-icons";
import { Box, HStack } from "@chakra-ui/react";
import { render } from "@testing-library/react";

const socials = [
  {
    icon: faEnvelope,
    url: "mailto: dimishenz@gmail.com",
  },
  {
    icon: faGithub,
    url: "https://github.com/Dimisz",
  },
  {
    icon: faLinkedin,
    url: "https://www.linkedin.com/in/vladimir-solovyov-6b7136222/",
  },
  {
    icon: faMedium,
    url: "https://medium.com", // no account 
  },
  {
    icon: faStackOverflow,
    url: "https://stackoverflow.com", // no account
  },
];

const renderedSocials = socials.map((social) => {
  return(
    <a key={social.url} href={social.url} target='_blank'><FontAwesomeIcon icon={social.icon} size='2x'/></a>
  );
})

const Header = () => {
  //const handleClick = (anchor) => (event) => {
  const handleClick = (anchor) => {
    //event.preventDefault();
    const id = `${anchor}-section`;
    // const id = 'contactme-section';
    // console.log(`clicked with id: ${id}`)
    const element = document.getElementById(id);
    // console.log(element);
    if (element) {
      element.scrollIntoView({
        behavior: "smooth",
        block: "start",
      });
    }
  };

  return (
    <Box
      position="fixed"
      top={0}
      left={0}
      right={0}
      translateY={0}
      transitionProperty="transform"
      transitionDuration=".3s"
      transitionTimingFunction="ease-in-out"
      backgroundColor="#18181b"
    >
      <Box color="white" maxWidth="1280px" margin="0 auto">
        <HStack
          px={16}
          py={4}
          justifyContent="space-between"
          alignItems="center"
        >
          <nav>
            {/* Add social media links based on the `socials` data */}
            <HStack spacing={12}>
              {renderedSocials}
            </HStack>
          </nav>
          <nav>
            <HStack spacing={8}>
              {/* Add links to Projects and Contact me section */}
              <a href='/#projects' onClick={() => handleClick('projects')}>Projects</a>
              <a href='/#contact-me' onClick={() => handleClick('contactme')}>Contact Me</a>
            </HStack>
          </nav>
        </HStack>
      </Box>
    </Box>
  );
};
export default Header;
