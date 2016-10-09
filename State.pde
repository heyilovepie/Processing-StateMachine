class State{
  //This class is a finite state machine.
  //You can only be in one state at a time and that is regulated by strings.
  
  private ArrayList<String> states; 
  private int state = -1; //holds what state
  
  State(){
  states = new ArrayList<String>();
  }
  
  State(ArrayList<String> states){
    this.states = states;
  }
  
  State(String[] states){
    this.states = new ArrayList<String>();
    add(states);
  }
  
  //add another state
  public void add(String newState){
    states.add(newState);
  }
  
  public void add(String[] newStates){
    for(int i=0; i<newStates.length; i++){
      states.add(newStates[i]);
    }
  }
  
  public void add(ArrayList<String> newStates){
    for(int i=0; i<newStates.size(); i++){
      states.add(newStates.get(i));
    }
  }
  
  //replace the state
  public void set(String newState){
    if(newState == null){
      state = -1;
      return;
    }
    for(int i=0; i<states.size(); i++){
      if(states.get(i) == newState) state = i;
    }
  }
  
  //get what state it is 
  public String get(){
    if(state < 0) return null; //no state
    return states.get(state);
  }
}