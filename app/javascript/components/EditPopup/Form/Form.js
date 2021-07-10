import React from 'react';
import PropTypes from 'prop-types';
import { has } from 'ramda';

import TextField from '@material-ui/core/TextField';

import UserSelect from 'components/UserSelect';

import useStyles from './useStyles';

const Form = ({ errors, onChange, task }) => {
  const styles = useStyles();

  const handleChangeTextField = (fieldName) => (event) => onChange({ ...task, [fieldName]: event.target.value });
  const handleChangeSelect = (fieldName) => (user) => onChange({ ...task, [fieldName]: user });

  return (
    <form className={styles.root}>
      <TextField
        error={has('name', errors)}
        helperText={errors.name}
        onChange={handleChangeTextField('name')}
        value={task.name}
        label="Name"
        required
        margin="dense"
      />
      <TextField
        error={has('description', errors)}
        helperText={errors.description}
        onChange={handleChangeTextField('description')}
        value={task.description}
        label="Description"
        required
        multiline
        margin="dense"
      />
      <UserSelect
        label="Asignee"
        value={task.asignee}
        onChange={handleChangeSelect('asignee')}
        isRequired
        error={has('asignee', errors)}
        helperText={errors.asignee}
      />
      <UserSelect
        label="Author"
        value={task.author}
        onChange={handleChangeSelect('author')}
        isDisabled
        isRequired
        error={has('author', errors)}
        helperText={errors.author}
      />
    </form>
  );
};

Form.propTypes = {
  onChange: PropTypes.func.isRequired,
  task: PropTypes.shape().isRequired,
  errors: PropTypes.shape({
    name: PropTypes.arrayOf(PropTypes.string),
    description: PropTypes.arrayOf(PropTypes.string),
    author: PropTypes.arrayOf(PropTypes.string),
    assignee: PropTypes.arrayOf(PropTypes.string),
  }),
};

Form.defaultProps = {
  errors: {},
};

export default Form;
