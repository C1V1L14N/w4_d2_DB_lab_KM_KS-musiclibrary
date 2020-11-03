import pdb
from models.task import Task
from models.user import User
import repositories.task_repository as task_repository
import repositories.user_repository as user_repository

task_repository.delete_all()
user_repository.delete_all()

user_1 = User("Kenny", "McKeown")
user_repository.save(user_1)
user_2 = User("Jeffy", "McTavenish")
user_repository.save(user_2)

task = Task("walk the dog", user_1, 60, True)

pdb.set_trace()
