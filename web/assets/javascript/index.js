function addTask() {
    let taskTitle = $("#task-title").val();
    let taskDescription = $("#task-description").val();
    let taskDate = $("#task-due").val();
    let text = `<div class='taskHolder'><div class="task-head"> <span class="task-title">${taskTitle}</span><br>
     <span class="taskdate">${taskDate}</span> 
    <button class="delete-task">&times</button> <button class="move-task">+</button> </div>
    <span class="task-description">${taskDescription}</span></div>`;
    let test = $("#pending").append(text);
    
    $(".delete-task").click(function () {
        $(this)
            .parent()
            .parent()
            .remove();
    });

    $(".move-task").click(function () {
        let done = `<button class="done-task">&#10003;</button>`;
        let back = `<button class='undone'> &#8592;</button>`;
        //moves to task in progress
        $(this)
            .parent()
            .append(done);
        $(this)
            .parent()
            .append(back);

        $(this)
            .parent()
            .parent()
            .appendTo("#inprogress");
        $(this).remove(".move-task");

        $(".done-task").click(function () {
            $(this)
                .parent()
                .parent()
                .appendTo("#completed");
            $(this).remove();
            $("#completed")
                .children()
                .children()
                .wrap("<strike>");
        });
    });
}

$("#add").click(function () {
    addTask();
    
});
