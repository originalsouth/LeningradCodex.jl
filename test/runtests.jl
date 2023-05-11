#!/usr/bin/env julia

using LeningradCodex
using Test

include("../common/common.jl")

@testset "Chapter Counts" begin
    @test sum(sum.(length.(values(LeningradCodex.codex)))) == 929
    chapters = [50, 40, 27, 36, 34, 24, 21, 31, 24, 22, 25, 66, 52, 48, 14, 4, 9, 1, 4, 7, 3, 3, 3, 2, 14, 3, 150, 31, 42, 8, 4, 5, 12, 10, 12, 10, 13, 29, 36]
    @test sum(chapters) == 929
    for (book, cnt) in zip(Books, chapters)
        @test length(LeningradCodex.codex[book]) == cnt
    end
end

@testset "Genesis Verse Counts" begin
    verses = [31, 25, 24, 26, 32, 22, 24, 22, 29, 32, 32, 20, 18, 24, 21, 16, 27, 33, 38, 18, 34, 24, 20, 67, 34, 35, 46, 22, 35, 43, 54, 33, 20, 31, 29, 43, 36, 30, 23, 23, 57, 38, 34, 34, 28, 34, 31, 22, 33, 26]
    @test length(verses) == length(LeningradCodex.codex["Genesis"])
    @test sum(verses) == 1533
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Genesis"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Exodus Verse Counts" begin
    verses = [22, 25, 22, 31, 23, 30, 29, 28, 35, 29, 10, 51, 22, 31, 27, 36, 16, 27, 25, 26, 37, 30, 33, 18, 40, 37, 21, 43, 46, 38, 18, 35, 23, 35, 35, 38, 29, 31, 43, 38]
    @test length(verses) == length(LeningradCodex.codex["Exodus"])
    @test sum(verses) == 1213
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Exodus"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Leviticus Verse Counts" begin
    verses = [17, 16, 17, 35, 26, 23, 38, 36, 24, 20, 47, 8, 59, 57, 33, 34, 16, 30, 37, 27, 24, 33, 44, 23, 55, 46, 34]
    @test length(verses) == length(LeningradCodex.codex["Leviticus"])
    @test sum(verses) == 859
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Leviticus"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Numbers Verse Counts" begin
    #Note that whether Numbers:25:19 exists is a Machlauwkes in this source it does
    verses = [54, 34, 51, 49, 31, 27, 89, 26, 23, 36, 35, 16, 33, 45, 41, 35, 28, 32, 22, 29, 35, 41, 30, 25, 19, 65, 23, 31, 39, 17, 54, 42, 56, 29, 34, 13]
    @test length(verses) == length(LeningradCodex.codex["Numbers"])
    @test sum(verses) == 1289
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Numbers"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Deuteronomy Verse Counts" begin
    verses = [46, 37, 29, 49, 33, 25, 26, 20, 29, 22, 32, 31, 19, 29, 23, 22, 20, 22, 21, 20, 23, 29, 26, 22, 19, 19, 26, 69, 28, 20, 30, 52, 29, 12]
    @test length(verses) == length(LeningradCodex.codex["Deuteronomy"])
    @test sum(verses) == 959
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Deuteronomy"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Joshua Verse Counts" begin
    verses = [18, 24, 17, 24, 15, 27, 26, 35, 27, 43, 23, 24, 33, 15, 63, 10, 18, 28, 51, 9, 45, 34, 16, 33]
    @test length(verses) == length(LeningradCodex.codex["Joshua"])
    @test sum(verses) == 658
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Joshua"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Judges Verse Counts" begin
    verses = [36, 23, 31, 24, 31, 40, 25, 35, 57, 18, 40, 15, 25, 20, 20, 31, 13, 31, 30, 48, 25]
    @test length(verses) == length(LeningradCodex.codex["Judges"])
    @test sum(verses) == 618
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Judges"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "I Samuel Verse Counts" begin
    #Note that in this source I Samuel:23:29 is moved I Samuel:24:1
    verses = [28, 36, 21, 22, 12, 21, 17, 22, 27, 27, 15, 25, 23, 52, 35, 23, 58, 30, 24, 42, 16, 23, 28, 23, 44, 25, 12, 25, 11, 31, 13]
    @test length(verses) == length(LeningradCodex.codex["Samuel_1"])
    @test sum(verses) == 811
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Samuel_1"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "II Samuel Verse Counts" begin
    verses = [27, 32, 39, 12, 25, 23, 29, 18, 13, 19, 27, 31, 39, 33, 37, 23, 29, 32, 44, 26, 22, 51, 39, 25]
    @test length(verses) == length(LeningradCodex.codex["Samuel_2"])
    @test sum(verses) == 695
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Samuel_2"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "I Kings Verse Counts" begin
    verses = [53, 46, 28, 20, 32, 38, 51, 66, 28, 29, 43, 33, 34, 31, 34, 34, 24, 46, 21, 43, 29, 54]
    @test length(verses) == length(LeningradCodex.codex["Kings_1"])
    @test sum(verses) == 817
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Kings_1"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "II Kings Verse Counts" begin
    verses = [18, 25, 27, 44, 27, 33, 20, 29, 37, 36, 20, 22, 25, 29, 38, 20, 41, 37, 37, 21, 26, 20, 37, 20, 30]
    @test length(verses) == length(LeningradCodex.codex["Kings_2"])
    @test sum(verses) == 719
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Kings_2"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Isaiah Verse Counts" begin
    verses = [31, 22, 26, 6, 30, 13, 25, 23, 20, 34, 16, 6, 22, 32, 9, 14, 14, 7, 25, 6, 17, 25, 18, 23, 12, 21, 13, 29, 24, 33, 9, 20, 24, 17, 10, 22, 38, 22, 8, 31, 29, 25, 28, 28, 25, 13, 15, 22, 26, 11, 23, 15, 12, 17, 13, 12, 21, 14, 21, 22, 11, 12, 19, 11, 25, 24]
    @test length(verses) == length(LeningradCodex.codex["Isaiah"])
    @test sum(verses) == 1291
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Isaiah"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Jeremiah Verse Counts" begin
    verses = [19, 37, 25, 31, 31, 30, 34, 23, 25, 25, 23, 17, 27, 22, 21, 21, 27, 23, 15, 18, 14, 30, 40, 10, 38, 24, 22, 17, 32, 24, 40, 44, 26, 22, 19, 32, 21, 28, 18, 16, 18, 22, 13, 30, 5, 28, 7, 47, 39, 46, 64, 34]
    @test length(verses) == length(LeningradCodex.codex["Jeremiah"])
    @test sum(verses) == 1364
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Jeremiah"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Ezekiel Verse Counts" begin
    verses = [28, 10, 27, 17, 17, 14, 27, 18, 11, 22, 25, 28, 23, 23, 8, 63, 24, 32, 14, 44, 37, 31, 49, 27, 17, 21, 36, 26, 21, 26, 18, 32, 33, 31, 15, 38, 28, 23, 29, 49, 26, 20, 27, 31, 25, 24, 23, 35]
    @test length(verses) == length(LeningradCodex.codex["Ezekiel"])
    @test sum(verses) == 1273
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Ezekiel"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Hosea Verse Counts" begin
    verses = [9, 25, 5, 19, 15, 11, 16, 14, 17, 15, 11, 15, 15, 10]
    @test length(verses) == length(LeningradCodex.codex["Hosea"])
    @test sum(verses) == 197
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Hosea"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Joel Verse Counts" begin
    verses = [20, 27, 5, 21]
    @test length(verses) == length(LeningradCodex.codex["Joel"])
    @test sum(verses) == 73
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Joel"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Amos Verse Counts" begin
    verses = [15, 16, 15, 13, 27, 14, 17, 14, 15]
    @test length(verses) == length(LeningradCodex.codex["Amos"])
    @test sum(verses) == 146
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Amos"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Obadiah Verse Counts" begin
    verses = [21]
    @test length(verses) == length(LeningradCodex.codex["Obadiah"])
    @test sum(verses) == 21
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Obadiah"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Jonah Verse Counts" begin
    verses = [16, 11, 10, 11]
    @test length(verses) == length(LeningradCodex.codex["Jonah"])
    @test sum(verses) == 48
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Jonah"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Micah Verse Counts" begin
    verses = [16, 13, 12, 14, 14, 16, 20]
    @test length(verses) == length(LeningradCodex.codex["Micah"])
    @test sum(verses) == 105
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Micah"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Nahum Verse Counts" begin
    verses = [14, 14, 19]
    @test length(verses) == length(LeningradCodex.codex["Nahum"])
    @test sum(verses) == 47
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Nahum"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Habakkuk Verse Counts" begin
    verses = [17, 20, 19]
    @test length(verses) == length(LeningradCodex.codex["Habakkuk"])
    @test sum(verses) == 56
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Habakkuk"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Zephaniah Verse Counts" begin
    verses = [18, 15, 20]
    @test length(verses) == length(LeningradCodex.codex["Zephaniah"])
    @test sum(verses) == 53
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Zephaniah"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Haggai Verse Counts" begin
    verses = [15, 23]
    @test length(verses) == length(LeningradCodex.codex["Haggai"])
    @test sum(verses) == 38
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Haggai"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Zechariah Verse Counts" begin
    verses = [17, 17, 10, 14, 11, 15, 14, 23, 17, 12, 17, 14, 9, 21]
    @test length(verses) == length(LeningradCodex.codex["Zechariah"])
    @test sum(verses) == 211
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Zechariah"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Malachi Verse Counts" begin
    verses = [14, 17, 24]
    @test length(verses) == length(LeningradCodex.codex["Malachi"])
    @test sum(verses) == 55
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Malachi"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Psalms Verse Counts" begin
    verses = [6, 12, 9, 9, 13, 11, 18, 10, 21, 18, 7, 9, 6, 7, 5, 11, 15, 51, 15, 10, 14, 32, 6, 10, 22, 12, 14, 9, 11, 13, 25, 11, 22, 23, 28, 13, 40, 23, 14, 18, 14, 12, 5, 27, 18, 12, 10, 15, 21, 23, 21, 11, 7, 9, 24, 14, 12, 12, 18, 14, 9, 13, 12, 11, 14, 20, 8, 36, 37, 6, 24, 20, 28, 23, 11, 13, 21, 72, 13, 20, 17, 8, 19, 13, 14, 17, 7, 19, 53, 17, 16, 16, 5, 23, 11, 13, 12, 9, 9, 5, 8, 29, 22, 35, 45, 48, 43, 14, 31, 7, 10, 10, 9, 8, 18, 19, 2, 29, 176, 7, 8, 9, 4, 8, 5, 6, 5, 6, 8, 8, 3, 18, 3, 3, 21, 26, 9, 8, 24, 14, 10, 8, 12, 15, 21, 10, 20, 14, 9, 6]
    @test length(verses) == length(LeningradCodex.codex["Psalms"])
    @test sum(verses) == 2527
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Psalms"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Proverbs Verse Counts" begin
    verses = [33, 22, 35, 27, 23, 35, 27, 36, 18, 32, 31, 28, 25, 35, 33, 33, 28, 24, 29, 30, 31, 29, 35, 34, 28, 28, 27, 28, 27, 33, 31]
    @test length(verses) == length(LeningradCodex.codex["Proverbs"])
    @test sum(verses) == 915
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Proverbs"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Job Verse Counts" begin
    verses = [22, 13, 26, 21, 27, 30, 21, 22, 35, 22, 20, 25, 28, 22, 35, 22, 16, 21, 29, 29, 34, 30, 17, 25, 6, 14, 23, 28, 25, 31, 40, 22, 33, 37, 16, 33, 24, 41, 30, 32, 26, 17]
    @test length(verses) == length(LeningradCodex.codex["Job"])
    @test sum(verses) == 1070
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Job"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Song of Songs Verse Counts" begin
    verses = [17, 17, 11, 16, 16, 12, 14, 14]
    @test length(verses) == length(LeningradCodex.codex["Song_of_Songs"])
    @test sum(verses) == 117
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Song_of_Songs"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Ruth Verse Counts" begin
    verses = [22, 23, 18, 22]
    @test length(verses) == length(LeningradCodex.codex["Ruth"])
    @test sum(verses) == 85
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Ruth"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Lamentations Verse Counts" begin
    verses = [22, 22, 66, 22, 22]
    @test length(verses) == length(LeningradCodex.codex["Lamentations"])
    @test sum(verses) == 154
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Lamentations"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Ecclesiastes Verse Counts" begin
    verses = [18, 26, 22, 17, 19, 12, 29, 17, 18, 20, 10, 14]
    @test length(verses) == length(LeningradCodex.codex["Ecclesiastes"])
    @test sum(verses) == 222
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Ecclesiastes"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Esther Verse Counts" begin
    verses = [22, 23, 15, 17, 14, 14, 10, 17, 32, 3]
    @test length(verses) == length(LeningradCodex.codex["Esther"])
    @test sum(verses) == 167
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Esther"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Daniel Verse Counts" begin
    verses = [21, 49, 33, 34, 30, 29, 28, 27, 27, 21, 45, 13]
    @test length(verses) == length(LeningradCodex.codex["Daniel"])
    @test sum(verses) == 357
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Daniel"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Ezra Verse Counts" begin
    verses = [11, 70, 13, 24, 17, 22, 28, 36, 15, 44]
    @test length(verses) == length(LeningradCodex.codex["Ezra"])
    @test sum(verses) == 280
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Ezra"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "Nehemiah Verse Counts" begin
    verses = [11, 20, 38, 17, 19, 19, 72, 18, 37, 40, 36, 47, 31]
    @test length(verses) == length(LeningradCodex.codex["Nehemiah"])
    @test sum(verses) == 405
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Nehemiah"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "I Chronicles Verse Counts" begin
    verses = [54, 55, 24, 43, 41, 66, 40, 40, 44, 14, 47, 41, 14, 17, 29, 43, 27, 17, 19, 8, 30, 19, 32, 31, 31, 32, 34, 21, 30]
    @test length(verses) == length(LeningradCodex.codex["Chronicles_1"])
    @test sum(verses) == 943
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Chronicles_1"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "II Chronicles Verse Counts" begin
    verses = [18, 17, 17, 22, 14, 42, 22, 18, 31, 19, 23, 16, 23, 14, 19, 14, 19, 34, 11, 37, 20, 12, 21, 27, 28, 23, 9, 27, 36, 27, 21, 33, 25, 33, 27, 23]
    @test length(verses) == length(LeningradCodex.codex["Chronicles_2"])
    @test sum(verses) == 822
    for ((i, chapter), cnt) in zip(enumerate(LeningradCodex.codex["Chronicles_2"]), verses)
        @test length(chapter) == cnt
    end
end

@testset "" begin
    function strip(str::String, args...)
        retval = str
        for token in (args...,)
            retval = join(split(retval, token), " ")
        end
        return retval
    end
    chapters = [join.(chapter, " ") for name in Books for chapter in LeningradCodex.codex[name]]
    raw = join(join.(chapters), "\n\n\n")
    raw_qtav = replace(raw, r"\[.*?\]" => s"")
    words = filter(!isempty, filter.(isletter, string.(filter(!isempty, split(strip(raw_qtav, "׃", "־", "\n", "׆"), " ")))))
    usw = unique(sort(words))
    @test length(usw) == 39648
end
