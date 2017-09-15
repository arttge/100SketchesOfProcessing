

class CA {

  int r = 0;
  int[] cells;
  int generation;
  int[] ruleset = {0, 0, 0, 0, 0, 0, 0, 0};

  int w = 10;

  CA() {
    cells = new int[width/w];
    for (int i = 0; i < cells.length; i++) {
      cells[i] = 0;
    }
    cells[cells.length/2] = 1;
    generation = 0;
  }


  void generate() {
    int[] nextgen = new int[cells.length];

    for (int i =1; i<cells.length-1; i++) {
      int left = cells[i-1];
      int me = cells[i];
      int right = cells[i+1];
      nextgen[i] = rules(left, me, right);
    }
    cells = nextgen;
    generation++;
  }

  void display() {
    for (int i = 0; i < cells.length; i++) {
      if (cells[i] == 1) fill(80,227,194);
      else               fill(255,234,80);
      noStroke();
      ellipseMode(CORNER);
      ellipse(i*w, generation*w, w, w);
      //rect(i*w, generation*w, w, w);
    }
  }

  void update() {
    //重置cells
    for (int i = 0; i < cells.length; i++) {
      cells[i] = 0;
    }
    cells[cells.length/2] = 1;

    //改变规则
    r = int(random(255));
    int[] newRuleset = new int[ruleset.length];
    for (int b =0; b<8; b++) {
      if (((1<<b)&r)!=0) {
        newRuleset[b]=1;
      } else {
        newRuleset[b]=0;
      }
    }
    ruleset = newRuleset;
    ca.generation = 0;
  }

  int rules (int a, int b, int c) {
    if (a == 1 && b == 1 && c == 1) return ruleset[0];
    if (a == 1 && b == 1 && c == 0) return ruleset[1];
    if (a == 1 && b == 0 && c == 1) return ruleset[2];
    if (a == 1 && b == 0 && c == 0) return ruleset[3];
    if (a == 0 && b == 1 && c == 1) return ruleset[4];
    if (a == 0 && b == 1 && c == 0) return ruleset[5];
    if (a == 0 && b == 0 && c == 1) return ruleset[6];
    if (a == 0 && b == 0 && c == 0) return ruleset[7];
    return 0;
  }
}