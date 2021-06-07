def text_customizer(text, wpm, score):
    from nltk.tokenize import word_tokenize
    paragraf = text.split('\n')

    # number of words in a day
    words = wpm * score * 2

    # words sum  
    total = 0
    customized_text = ""
    for index, text in enumerate(paragraf):
        words_sentence = len(word_tokenize(text))
        total = total + words_sentence
        # print(total, words)
        if total <= words:
            customized_text = customized_text + text +" "
    return paragraf[0], customized_text.strip()