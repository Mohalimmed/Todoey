class TaskModels {

final String? name;
bool isChecked;

TaskModels({this.name, this.isChecked = false});

void toggleFunction(){
  isChecked = !isChecked;
}


}