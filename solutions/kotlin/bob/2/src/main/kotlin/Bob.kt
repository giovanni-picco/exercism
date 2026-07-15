object Bob {
    fun hey(input: String): String {
        if(input.isBlank()) return "Fine. Be that way!"
        if(input.isYelling() && input.isQuestion()) return "Calm down, I know what I'm doing!"
        if(input.isQuestion()) return "Sure."
        if(input.isYelling()) return "Whoa, chill out!"
        return "Whatever."
    }

    private fun String.isQuestion(): Boolean = this.isNotBlank() && this.trim().last() == '?'

    private fun String.isYelling(): Boolean =
        this.any { it.isLetter() }
                && this.filter { it.isLetter() }.all { it.isUpperCase() }

}