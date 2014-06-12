// def repeat(string)
// if string.length < 2
// return string
// end
// count = 1
// while string[0] == string[count] && (count < string.length)
// count += 1
// end
// if count == 1
// return string[0] + repeat(string[count...string.length])
// else
//     return count.to_s + string[0] + repeat(string[count...string.length])
// end
// end
// puts repeat("AAAAAABBBCDD")
// # becomes 4A3BCD

function repeat(string) {
    if string.length < 2 {
        return string;
    }
    return string;
};

string = "A";

repeat(string);
// function compress(str) {
//     var count_hash = {};
//     string_arr = str.split("");
//     for (var i = 0; i < string_arr.length; i++) {
//         count_hash[i] = string_arr.count(i); //count does not exist in javascript
//     }
//     var arr = [];
//     for (var key in count_hash) {
//         if (count_hash[key] == 1) {
//             arr.push(key);
//         } else {
//             arr.push(value + key);
//         }
//     }
//     arr.join("")
// }



# def compress(str)
# count_hash = {}
# string_arr = str.split("")
# string_arr.each do |
character |
    # count_hash[character] = string_arr.count character
# end
# arr = []
# count_hash.each do |
key, value |
    # value == 1 ? arr.push("#{key}") : arr.push("#{value}#{key}")
# end
# arr.join("")
# end
# string = "AAAABBBCD"
# puts compress(string)