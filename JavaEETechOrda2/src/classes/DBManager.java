package classes;

import java.util.ArrayList;

public class DBManager {
    private static ArrayList<Tasks> tasks = new ArrayList<>();
    private static Long id = 4L;
    static {
        tasks.add(new Tasks(1L,"homework","homework","2024-03-03",true));
        tasks.add(new Tasks(2L,"mathematics","mathematics","2024-04-03",false));
        tasks.add(new Tasks(3L,"GYM","GYM","2024-02-05",true));
    }

    public static void addTask(Tasks task){
        task.setId(id);
        task.setStatus(false);
        id++;
        tasks.add(task);
    }

    public static Tasks getTask(Long id){
        Tasks task = new Tasks();
        for (int i = 0; i < tasks.size(); i++) {
            if (id == tasks.get(i).getId()){
                return tasks.get(i);
            }
        }
        return task;
    }

    public static ArrayList getAllTasks(){
        return tasks;
    }
}
