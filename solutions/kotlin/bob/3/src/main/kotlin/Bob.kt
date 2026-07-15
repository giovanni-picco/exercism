object Bob {
    fun hey(input: String): String {
       return when {
            input.isBlank() -> "Fine. Be that way!"
            input.isYelling() && input.isQuestion() -> "Calm down, I know what I'm doing!"
            input.isQuestion() -> "Sure."
            input.isYelling() -> "Whoa, chill out!"
            else -> "Whatever."
        }
    }

    private fun String.isQuestion(): Boolean = this.isNotBlank() && this.trim().last() == '?'

    private fun String.isYelling(): Boolean =
        this.any { it.isLetter() }
                && this.filter { it.isLetter() }.all { it.isUpperCase() }

}