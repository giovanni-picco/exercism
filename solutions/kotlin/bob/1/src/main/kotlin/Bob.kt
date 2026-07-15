object Bob {
    fun hey(input: String): String {
        if(input.isBlank()) return "Fine. Be that way!"

        val isQuestion = input.trim().last() == '?'
        var isLetterUppercase = false
        for(char in input.trim()) {
            if(!char.isLetter()) continue

            if(char.isUpperCase()) {
                isLetterUppercase = true
            } else {
                isLetterUppercase = false
                break
            }
        }

        if(isLetterUppercase && isQuestion) return "Calm down, I know what I'm doing!"
        if(isQuestion) return "Sure."
        if(isLetterUppercase) return "Whoa, chill out!"

        return "Whatever."
    }

}