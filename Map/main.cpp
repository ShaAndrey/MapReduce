#include <iostream>

void ParseValue(std::string &value) {
    if (value.back() != ' ') {
        value += ' ';
    }
    while (!value.empty()) {
        std::string word = value.substr(0, value.find(' '));
        std::cout << word << "\t1\n";
        value.erase(0, word.size() + 1);
    }
}

int main() {
    std::string line;
    while (std::getline(std::cin, line)) {
        size_t pos = line.find('\t');
        std::string key = line.substr(0, pos);
        std::string value = line.substr(pos + 1);
        ParseValue(value);
    }
    return 0;
}



