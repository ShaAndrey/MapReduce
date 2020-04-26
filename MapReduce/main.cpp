#include <iostream>
#include <fstream>
#include <vector>
#include <boost/process.hpp>

namespace bp = boost::process;

int main(int argc, char *argv[]) {
    assert(argc == 5);
    std::string command = argv[1];
    std::string filepath = argv[2];
    std::string input = argv[3];
    std::string output = argv[4];
    if (command == "map") {
        bp::system(filepath, bp::std_in < input, bp::std_out > output);
    } else if (command == "reduce") {
        std::vector<std::string> lines;
        std::string line;
        std::ifstream input_file(input);
        while (std::getline(input_file, line, '\n')) {
            lines.push_back(line);
        }
        std::sort(lines.begin(), lines.end());

        std::ofstream reduce_input("reduce0.in");
        int reduces_count = 0;
        reduce_input << lines[0] << '\n';
        for (size_t i = 1; i < lines.size(); ++i) {
            std::string prev_key = lines[i - 1].substr(0, lines[i - 1].find('\t'));
            std::string curr_key = lines[i].substr(0, lines[i].find('\t'));
            if (prev_key != curr_key) {
                reduce_input.close();
                bp::system(filepath, bp::std_in < "reduce" + std::to_string(reduces_count) + ".in",
                           bp::std_out > "reduce" + std::to_string(reduces_count) + ".out");
                ++reduces_count;
                reduce_input = std::ofstream("reduce" + std::to_string(reduces_count) + ".in");
            }
            reduce_input << lines[i] << '\n';
        }
        reduce_input.close();
        bp::system(filepath, bp::std_in < "reduce" + std::to_string(reduces_count) + ".in",
                   bp::std_out > "reduce" + std::to_string(reduces_count) + ".out");

        std::ofstream reduce_output(output);
        for (int i = 0; i <= reduces_count; ++i) {
            std::ifstream reduced("reduce" + std::to_string(i) + ".out");
            while (std::getline(reduced, line, '\n')) {
                reduce_output << line << '\n';
            }
        }
    } else {
        throw std::runtime_error("Wrong script is being run");
    }
    return 0;
}
