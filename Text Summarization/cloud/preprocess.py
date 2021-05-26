  
class Preprocessing:
    def __init__(self):
        from nltk.tokenize import sent_tokenize, word_tokenize
        from Sastrawi.StopWordRemover.StopWordRemoverFactory import StopWordRemoverFactory
        import re

        factory = StopWordRemoverFactory()
        stop_words = factory.get_stop_words()

    def cleaning(rows):
        sentences = []
        processed = []
        for row in sent_tokenize(rows['paragraphs']):
            sentences.append(sent_tokenize(row))
        sentences = [y for x in sentences for y in x]
        # sentences = tokenize raw paragraph <list>

        for text in sentences:
            text = text.lower()
            text = re.sub(r"[^a-zA-Z]", " ", text)
            text = re.sub(r"\b\w{1,3}\b"," ",text)
            text = " ".join([word for word in text.split() if not word in stop_words])
            processed.append(text)
        # processed = tokenize cleaned text <list>
        return sentences, processed

    def process(rows, axis, axisa):
        """ Axis for return
            # 0 = SumBasic
            # 1 = SumBasic order
            # 2 = Sentence length
        """
        if axis == 0 or axis == 1:
            sentences, processed = cleaning(rows)
            # Calling SumBasic
            sumbasic, sumbasic_order, frequency = sumBasic(sentences, processed)
            if axis == 0:
                return sumbasic
            elif axis == 1:
                return sumbasic_order
            elif axis == 2:
                return frequency

    def sorting(e):
        return e[2]

    def sumBasic(sentences, processed):
        # Count the sum weights
        frequency = {}
        for text in processed:
            for word in word_tokenize(text):
                if word not in frequency.keys():
                    frequency[word]=1
                else:
                    frequency[word]+=1
        max_fre = max(frequency.values())
        for word in frequency.keys():
            frequency[word]=(frequency[word]/max_fre)
        
        # Score the weight for every sentence
        scores = {}
        sentence_count = 0
        sentence_len = []
        for i, sentence in enumerate(processed):
            if (len(sentence) != 0):
                for word in word_tokenize(sentence):  
                    if word in frequency.keys():
                        if i not in scores.keys():
                            scores[i] = frequency[word]            
                        else:
                            scores[i] += frequency[word]
                            sentence_count += 1
                else:
                    scores[i] = 0.0000001
                    sentence_len.append(sentence_count)
                    sentence_count = 0

        ranked_sentences = sorted(([scores[i],i+1,s] for i,s in enumerate(sentences)), reverse=True)

        # Return list(SumBasic weights, SumBasic order, sentence order, sentence) => sum_bas
        sum_bas = []
        for index, sentence in enumerate(ranked_sentences):
            sentence.insert(1, index+1)
            sum_bas.append(sentence)

        sum_bas = sorted(sum_bas,key=sorting)

        SB_weight = []
        SB_order = []
        for i in range(len(sum_bas)):
            SB_weight.append(sum_bas[i][0])
            SB_order.append(sum_bas[i][1])
        # Just Return 2 list(TextRank weights, TextRank order)
        return SB_weight, SB_order, sentence_len