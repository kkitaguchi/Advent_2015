int len, wid, hei;
int sizes[];
int smallest;
int smalls[];
int paperSize;

void setup(){
  size(100,100);
  paperSize = 0;
  loadList("input.txt");
  calcSize();
  println(paperSize);
}

void calcSize(){
  for (int i=0; i<sizes.length; i++){
    paperSize += sizes[i] + smalls[i];
  }
  
}

void loadList(String file) {
    String lines[] = loadStrings(file);
    int size[];
    sizes = new int[lines.length];
    smalls = new int[lines.length];
    for (int i=0; i < lines.length; i++) {
      size = int(split(lines[i], "x"));
      len = size[0];
      wid = size[1];
      hei = size[2]; 
      sizes[i] = 2*len*wid + 2*wid*hei + 2*hei*len;
      smallest = len*wid;
      if(smallest > wid*hei){
        smallest = wid*hei;
      }
      if(smallest > hei*len){
        smallest = hei*len;
      }
      smalls[i] = smallest;
    }
  }//loadList
