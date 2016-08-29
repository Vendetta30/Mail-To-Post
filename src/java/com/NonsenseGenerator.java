package com;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class NonsenseGenerator {

    private static NonsenseGenerator sInstance;

    private Random mRandom;

    private static final String[] THINGS = {"bottle", "bowl", "brick", "building", "bunny", "cake", "car", "cat", "cup",
            "desk", "dog", "duck", "elephant", "engineer", "fork", "glass", "griffon", "hat", "key", "knife", "lawyer",
            "llama", "manual", "meat", "monitor", "mouse", "tangerine", "paper", "pear", "pen", "pencil", "phone",
            "physicist", "planet", "potato", "road", "salad", "shoe", "slipper", "soup", "spoon", "star", "steak", "table",
            "terminal", "treehouse", "truck", "watermelon", "window", "leaves", "lady-finger", "eggplant", "books", "laptop",
            "thunder", "ice", "snow", "sunlight", "bag", "muskmelon", "okra"};

    private static final String[] ADJECTIVES = {"red", "green", "yellow", "gray", "solid", "fierce", "friendly",
            "cowardly", "convenient", "foreign", "national", "tall", "short", "metallic", "golden", "silver", "sweet",
            "nationwide", "competitive", "stable", "municipal", "famous", "different", "used", "important",
            "every", "available", "large", "known", "basic", "historical", "old", "actual", "entire", "strong",
            "traditional", "poor", "significant", "intelligent", "responsible", "wonderful", "serious", "electronic",
            "dangerous", "severe", "numerous", "acceptable"};

    private static final String[] VERBS_PAST = {"accused", "threatened", "warned", "spoke to", "has met with",
            "was seen in the company of", "advanced towards", "collapsed on", "signed a partnership with",
            "was converted into", "became", "was authorized to sell", "sold", "bought", "rented", "allegedly spoke to",
            "leased", "is now investing on", "is expected to buy", "is expected to sell", "was reported to have met with",
            "will work together with", "plans to cease fire against", "started a war with", "signed a truce with",
            "is now managing", "is investigating", "arose", "build", "burnt", "drew", ""};

    private static final String[] VERBS_PRESENT = {"accuses", "threatens", "warns", "speaks to", "meets with", "seen with",
            "advances towards", "collapses on", "signs partnership with", "converts into", "becomes",
            "is authorized to sell", "sells", "buys", "rents", "allegedly speaks to", "leases", "invests on",
            "expected to buy", "expected to sell", "reported to have met with", "works together with",
            "plans cease fire against", "starts war with", "signs truce with", "now manages", "arise", "build", "burn", "draw"};

    public static synchronized NonsenseGenerator getInstance() {
        if (sInstance == null) {
            sInstance = new NonsenseGenerator();
        }
        return sInstance;
    }

    private NonsenseGenerator() {
        mRandom = new Random();
    }

    public String makeHeadline() {
        return makeSentence(true);
    }

    public String makeSentence(boolean isHeadline) {
        List<String> words = new ArrayList<String>();
        generateSentence(words, isHeadline);
        words.set(0, String.valueOf(Character.toUpperCase(words.get(0).charAt(0))) + words.get(0).substring(1));
        return joinWords(words);
    }

    public String makeText(int numSentences) {
        StringBuilder sb = new StringBuilder();
        while (numSentences-- > 0) {
            sb.append(makeSentence(false) + ".");
            if (numSentences > 0) {
                sb.append(" ");
            }
        }
        return sb.toString();
    }

    private void generateSentence(List<String> words, boolean isHeadline) {
        if (!isHeadline && mRandom.nextInt(4) == 0)
            generateTimeClause(words, isHeadline);
        generateAgent(words, isHeadline);
        generatePredicate(words, isHeadline);
    }

    private void generateTimeClause(List<String> words, boolean isHeadline) {
        if (mRandom.nextInt(2) == 0) {
            words.add(pickOneOf("today", "yesterday", "this afternoon", "this morning",
                    "last evening", "this evening", "last morning", "last afternoon", "tomorrow"));
        } else {
            words.add(pickOneOf("this", "last"));
            words.add(pickOneOf("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"));
            words.add(pickOneOf("morning", "afternoon", "evening", "night", "dawn", "midnight"));
        }
    }

    private void generateAgent(List<String> words, boolean isHeadline) {
        if (!isHeadline) {
            words.add(pickOneOf("a", "the", "an", "the"));
        }
        if (mRandom.nextInt(3) != 0) {
            words.add(pickOneOf(ADJECTIVES));
        }
        words.add(pickOneOf(THINGS));
    }

    private void generatePredicate(List<String> words, boolean isHeadline) {
        words.add(pickOneOf(isHeadline ? VERBS_PRESENT : VERBS_PAST));
        if (!isHeadline)
            words.add(pickOneOf("a", "the", "an", "it"));
        if (mRandom.nextInt(3) != 0) {
            words.add(pickOneOf(ADJECTIVES));
        }
        words.add(pickOneOf(THINGS));

        if (mRandom.nextInt(3) == 0) {
            words.add(isHeadline ? pickOneOf(", claims", ", says", ", show") : pickOneOf(", claimed", ", said", ", reported", ", ask", ", asked"));
            if (!isHeadline)
                words.add(pickOneOf("a", "the", "an", "it"));
            if (mRandom.nextInt(3) != 0) {
                words.add(pickOneOf(ADJECTIVES));
            }
            words.add(pickOneOf(THINGS));
        }
    }

    private String pickOneOf(String... options) {
        return options[mRandom.nextInt(options.length)];
    }

    private static String joinWords(List<String> words) {
        int i;
        if (words.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(words.get(0));
        for (i = 1; i < words.size(); i++) {
            if (!words.get(i).startsWith(",")) {
                sb.append(" ");
            }
            sb.append(words.get(i));
        }
        return sb.toString();
    }
}