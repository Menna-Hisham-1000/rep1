#include <gtest/gtest.h>

// Example function to test
int Add(int a, int b) {
    return a + b;
}

// Test case
TEST(LabTaskTest, AddFunction) {
    EXPECT_EQ(Add(2, 3), 5);
    EXPECT_EQ(Add(-1, 1), 0);
}

int main(int argc, char** argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
