# Given two version numbers, version1 and version2, compare them.
# Version numbers consist of one or more revisions joined by a dot '.'. Each revision consists of digits and may contain leading zeros. 
# Every revision contains at least one character. Revisions are 0-indexed from left to right, with the leftmost revision being revision 0, 
# the next revision being revision 1, and so on. For example 2.5.33 and 0.1 are valid version numbers.

# To compare version numbers, compare their revisions in left-to-right order. Revisions are compared using their integer value ignoring any leading zeros. 
# This means that revisions 1 and 001 are considered equal. If a version number does not specify a revision at an index, then treat the revision as 0. 
# For example, version 1.0 is less than version 1.1 because their revision 0s are the same, but their revision 1s are 0 and 1 respectively, and 0 < 1.

# Return the following:

#    If version1 < version2, return -1.
#    If version1 > version2, return 1.
#    Otherwise, return 0.

def compare_version(version1, version2)
    version_one_split = version1.split('.')
    version_two_split = version2.split('.')

    max = [version_one_split.length, version_two_split.length].max

    (0...max).each do |i|
        revision_one = i < version_one_split.length ? version_one_split[i].to_i : 0
        revision_two = i < version_two_split.length ? version_two_split[i].to_i : 0

        return 1 if revision_one > revision_two
        return -1 if revision_one < revision_two
    end
    0
end

compare_version("1.1", "1.0.0")