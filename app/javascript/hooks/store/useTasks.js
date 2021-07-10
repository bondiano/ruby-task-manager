import { useSelector } from 'react-redux';
import { useTasksActions } from 'slices/TasksSlice';

const useTasks = () => {
  const board = useSelector((state) => state.TasksSlice.board);
  const { loadBoard } = useTasksActions();

  return {
    board,
    loadBoard,
  };
};

export default useTasks;
