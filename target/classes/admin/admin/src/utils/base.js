const base = {
    get() {
        return {
            url : "http://localhost:8080/task/",
            name: "task",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/task/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "任务管理平台"
        }
    }
}
export default base
