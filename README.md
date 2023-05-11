# LeningradCodex.jl

A convinient Julia version of [tanach.us](http://tanach.us/)

```
# By BC van Zuiden -- Amstelveen, May 2023
# Probably very buggy USE AT OWN RISK this will brick everything you own
# NOBODY but YOU is liable for anything that happened in result of using this
# WARNING: DON'T RUN THIS PROGRAM THIS WILL DESTROY YOUR COMPUTER AND/OR HOUSE
# Any copyrighted piece of code within this code is NOT mine
# Inclusion of that code is forced upon me by a scary anonymous guy with a gun
```

Feel free to reuse and contribute, pull requests are very welcome!
This code is (and forever will be) a work in progress.

LeningradCodex.jl is an implemenation of the Leningrad Codex as scraped from [tanach.us](http://tanach.us/).
It provides `LeningradCodex.codex` of type `OrderedDict{String, Vector{Vector{Vector{String}}}}()` where keys are the book name and values are of the form:
```
#[book][chapter][verse][word]
```
such that:
```
LeningradCodex.codex["Genesis"][1][1] == ["בְּרֵאשִׁ֖ית", "בָּרָ֣א", "אֱלֹהִ֑ים", "אֵ֥ת", "הַשָּׁמַ֖יִם", "וְאֵ֥ת", "הָאָֽרֶץ׃"]
LeningradCodex.codex["Genesis"][1][1][1] == "בְּרֵאשִׁ֖ית"
```
A list of book names is provided by `LeningradCodex.Books`.

Note that, large, small and risen letters are not included, ׆'s are, Vav ketia is not supported by unicode.
(פ) and (ס) are represented by `" "^8` and `"\n"` anti-respectively.
