// The 'guess_the_number' program.
program guess_the_number.aleo {
    struct Play {
        owner: address,
        guessed: i128,
        number: i128,
        isCorrect: bool,
        height: i128
    }
    mapping plays: address => Play;
    mapping total_plays: u8 => u32;

    transition guessTransition(minNum: i128, maxNum: i128, guessed: i128) -> Play {
        let play: Play = Play {
            owner: self.caller,
            guessed: guessed,
            number: 0i128,
            isCorrect: false,
            height: 0i128
        };
        return play then finalize(play);
    }

    finalize guessTransition(play: Play, minNum: i128, maxNum: i128) {
        let randNum: i128 = minNum + ChaCha::rand_i128() % maxNum;
        if randNum == play.guessed {
            play.isCorrect = true;
        }
        play.height = block.height;
        let totalPlays: u32 = Mapping::get_or_use(total_plays, 255u8, 0u32);
        Mapping::set(total_plays, 255u8, totalPlays + 1u32);
        Mapping::set(plays, play.owner, play);
    }
}
