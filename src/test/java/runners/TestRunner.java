package runners;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.util.List;

public class TestRunner {

    private final int THREAD_COUNT = 5;

    private String getTags() {
        return System.getProperty("karate.tags", "@Regression");
    }

    @Test
    public void runTest() {
        var featurePathReader = new FeaturePathReader();
        List<String> featurePaths = featurePathReader.getFeaturePaths();
        String tags = getTags();

        Results results = Runner.path(featurePaths)
                .tags(tags)
                .parallel(THREAD_COUNT);

        Assertions.assertEquals(0, results.getFailCount(), "There are some scenarios which fails.");
    }
}
