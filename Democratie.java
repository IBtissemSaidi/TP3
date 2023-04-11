package beans;

public class Democratie {
public int voix;

    public Democratie() {
        voix = 0;
    }

    public int getVoix() {
        return voix;
    }

    public void setVoix(int voix) {
        this.voix = voix;
    }

    public int voter() {
        voix++;
        return voix;
    }
}

