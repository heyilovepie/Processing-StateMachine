State state;

void setup(){
  state = new State();
  state.add("running");
  state.add("walking");
  println(state.get());
  state.set("running");
  println(state.get());
  state.set("walking");
  println(state.get());
  state.set(null);
  println(state.get());
}