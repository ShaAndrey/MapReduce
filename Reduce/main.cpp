#include <iostream>

int main() {
    std::string word;
    int count = 0;
    std::string buff;
    while (getline(std::cin, buff, '\n')) {
        size_t pos = buff.find('\t');
        if (word.empty()) {
            word = buff.substr(0, pos);
        }
        count += std::stoi(buff.substr(pos + 1));
    }
    std::cout << word << "\t" << count << '\n';
    return 0;
}
