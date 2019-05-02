/**
*
* LeftMenuFooter
*
*/

import React from 'react';
import { defineMessages, FormattedMessage } from 'react-intl';
import { PropTypes } from 'prop-types';

import LeftMenuLink from '../LeftMenuLink';

import styles from './styles.scss';
import messages from './messages.json';
defineMessages(messages);

function LeftMenuFooter({ version }) { // eslint-disable-line react/prefer-stateless-function
  return (
    <div className={styles.leftMenuFooter}>
      <ul className={styles.list}>
        <LeftMenuLink
          icon="link"
          label={messages.documentation.defaultMessage}
          destination="https://p2bgravel.com/"
        />
      </ul>
      <div className={styles.poweredBy}>
        <FormattedMessage {...messages.poweredBy} />
        <a href="https://p2bgravel.com/" target="_blank">P2B Gravel</a>
      </div>
    </div>
  );
}

LeftMenuFooter.propTypes = {
  version: PropTypes.string.isRequired,
};

export default LeftMenuFooter;
