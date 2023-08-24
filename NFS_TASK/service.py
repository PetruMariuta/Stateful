from apscheduler.schedulers.background import BlockingScheduler
import requests
import datetime

path = "/var/log"
def main():
     
    date = datetime.datetime.now().strftime("%Y%m%d")
    #full_date=(date.strftime("%Y%m%d"))

    pods=["11","4"]
    for i in pods:
        
        url = f"https://stateful{i}.local"
        pod_name = url[8:]
      
        try:         
         output = requests.get(url ,verify="/usr/local/share/ca-certificates/myCA11.crt")
         with open(f"{path}/LOGS_{date}.logs", "a") as file:

            file.write(f"Pod {pod_name} has a response of " + str(output)+"\n")

        except OSError as error:        
         output = requests.get(url ,verify="/usr/local/share/ca-certificates/myCA1.crt")
         with open(f"{path}/LOGS_{date}.logs", "a") as file:
         #with open("/home/petru/task-8-august/NFS_TASK/bonus_LOGS.logs", "a") as file:

             file.write(f"Pod {pod_name} has a response of " + str(output)+"\n")

         #print(output)
         break

        #print(output)

if __name__ == "__main__":
    scheduler = BlockingScheduler()
    scheduler.add_job(main, 'interval', seconds=2)
    scheduler.start()