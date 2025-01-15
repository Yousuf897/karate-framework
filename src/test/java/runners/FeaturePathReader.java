package runners;

import java.util.ArrayList;
import java.util.List;

public class FeaturePathReader {

    public List<String> featurePaths;

    public FeaturePathReader() {
        this.featurePaths = new ArrayList<>();
        loadFeaturesPaths();
    }

    private void loadFeaturesPaths() {
        featurePaths.add("classpath:features/users.feature");
        featurePaths.add("classpath:features/postuser.feature");
    }

    public List<String> getFeaturePaths() {
        return featurePaths;
    }

    public void setFeaturePaths(List<String> featurePaths) {
        this.featurePaths = featurePaths;
    }
}
