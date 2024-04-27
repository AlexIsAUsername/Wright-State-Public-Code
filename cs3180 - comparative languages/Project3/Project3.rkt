#lang racket
;Alex Yeoh
;Project 3 - Playing Games with Racket
;Make a game in racket

;Improvements
;Betting, limits to betting, suits are symbols

; for making the deck
(define faces '(2 3 4 5 6 7 8 9 10 J Q K A))
(define suits '(♣ ♢ ♡ ♠))

; global variables, put on the top to easily see what all global variables are
(define thedeck null)
(define playerHand null)
(define dealerHand null)
(define pointsTotal 3000)
(define pointsBet 0)

; make-deck: Creates a new (unshuffled) 52 card deck
;  Parameters: none
;  Returns: The deck (a list of cards)
(define make-deck
  (append* (for/list ([j suits]) ; for each suit
             (for/list ([i faces]) ; for each face
               (cons i j))))) ; pair each face to one suit then repeat the process for each suit

; test for make-deck
; (set! thedeck make-deck)
; thedeck
; (length thedeck) ; 52

; eval-hand: Determine the best value of a hand, given that an Ace can be worth either 1 or 11 points.
;  Parameter: hand -- A list of cards to evaluate
;  Returns: The best possible value of the hand
(define (eval-hand hand)
  (let ([numAce 0] [total 0])
    (letrec ([reduceHand (lambda (numAce total)
                           (cond
                             [(or (< numAce 1) (< total 22)) total]
                             [(and (> numAce 0) (> total 21))
                              (set! total (- total 10))
                              (set! numAce (- numAce 1))
                              (reduceHand numAce total)]))])
      (for/list ([a hand]) ;
        (cond
          [(integer? (car a)) (set! total (+ total (car a)))] ; add up number cards
          [(equal? (car a) 'A) ; assume ace is 11
           (set! numAce (+ numAce 1))
           (set! total (+ total 11))]
          [else (set! total (+ total 10))])) ; add all face cards
      (when (> total 21) ; if total is too large, attempt to reduce total by num aces
        (set! total (reduceHand numAce total))))
    total))

; tests for eval-hand
; (define testHand null)
; (set! testHand (cons (cons 1 'a) (cons (cons 2 'b) '())))
; testHand
; (eval-hand testHand)
; (set! testHand (cons (cons 1 'a) (cons (cons 'J 'b) '())))
; testHand
; (eval-hand testHand)
; (set! testHand (cons (cons 'Q 'a) (cons (cons 2 'b) '())))
; testHand
; (eval-hand testHand)
; (set! testHand (cons (cons 'K 'a) (cons (cons 'K 'b) '())))
; testHand
; (eval-hand testHand)
; (set! testHand (cons (cons 'A 'a) (cons (cons 'K 'b) '())))
; testHand
; (eval-hand testHand)
; (set! testHand (cons (cons 'K 'a) (cons (cons 'A 'b) '())))
; testHand
; (eval-hand testHand)
; (set! testHand (cons (cons 'A 'a) (cons (cons 'A 'b) '())))
; testHand
; (eval-hand testHand)
; (set! testHand (cons (cons 'A 'a) (cons (cons 'J 'b) (cons (cons 'Q 'c) '()))))
; testHand
; (eval-hand testHand)
; (set! testHand (cons (cons 'A 'a) (cons (cons 'J 'b) (cons (cons 'Q 'c) (cons (cons 'K 'c) '())))))
; testHand
; (eval-hand testHand)
; (set! testHand (cons (cons '9 'a) (cons (cons '9 'b) (cons (cons '9 'c) '()))))
; testHand
; (eval-hand testHand)

; deal!: Create a two card hand, by removing the top two cards from the deck.
;  Parameter: deck -- The deck to deal from
;  Returns: A new two-card hand, consisting of the first two cards in the deck.
;  Side effects: The first two cards are removed from the deck.
(define (deal! deck)
  (set! thedeck (cddr deck)) ; set the deck
  (cons (car deck) (cons (cadr deck) '()))) ; return the hand without storing it in a variable

; tests for deal!
; (length thedeck)
; (deal! thedeck)
; (length thedeck)
; (deal! thedeck)
; (length thedeck)

; hit!: Take the top card from the deck and add it to a hand.
;  Parameter 1: deck -- The deck to deal from
;  Parameter 2: hand -- The hand to deal into
;  Returns: Nothing of interest
;  Side effects: The first card in the deck is removed from the deck and added to the hand.
(define (hit! deck hand)
  (set! thedeck (cdr deck)) ; set the deck
  (if (equal? hand playerHand) ; return the hand without storing it in a variable
      (set! playerHand (append playerHand (list (car deck))))
      (set! dealerHand (append dealerHand (list (car deck))))))

; tests for hit!
; (length thedeck)
; playerHand
; dealerHand
; (hit! thedeck playerHand)
; (length thedeck)
; playerHand
; dealerHand
; (hit! thedeck dealerHand)
; (length thedeck)
; playerHand
; dealerHand
; (hit! thedeck playerHand)
; (length thedeck)
; playerHand
; dealerHand
; (hit! thedeck dealerHand)
; (length thedeck)
; playerHand
; dealerHand

; show-hand: Display a hand (or most of it) to the screen.
;  Parameter 1: hand -- The hand to display
;  Parameter 2: how -- Should be either 'Full or 'Part. If how is 'Full, then show the entire hand.
;                      If how is 'Part, then show only ***** for the first card,
;                      and then show the rest of the hand normally.
;  Parameter 3: description -- A string to be displayed to the screen before the actual hand.
;  Returns: Nothing of interest
;  Side effects: The hand is displayed to the screen
(define (show-hand hand how description)
  ;   (display description)
  (cond
    [(equal? hand '()) (display "Error empty hand")] ; check for empty hand (should never happen)
    [(equal? 'Full how) ; display full hand
     (display description)
     (display hand)]
    [else
     (display description) ; display hand hiding first card
     (display (append (list '*****) (cdr hand)))])
  (newline))

; tests for show-hand
; (show-hand '() 'Full "Empty hand full: ")
; (show-hand '() 'Part "Empty hand part: ")
; (show-hand playerHand 'Full "Player test full: ")
; (show-hand playerHand 'Part "Player test part: ")
; (show-hand dealerHand 'Full "Dealer test full: ")
; (show-hand dealerHand 'Part "Dealer test part: ")

; betPoints: move the amount of points bet from pointsTotal to pointsBet
;  Parameter 1: points -- The amount of points bet
;  Returns: Nothing of interest
;  Side effects: points moved from pointsTotal to pointsBet and
;                display a statement about how many points have been bet.
(define (betPoints points)
  (set! pointsTotal (- pointsTotal points))
  (set! pointsBet points)
  (display "You have bet: ")
  (display points)
  (displayln " points"))

; betWon: what happens when the player wins
;  Returns: Nothing of interest
;  Side effects: add double pointsbet to pointstotal and reset points bet,
;                display a mesage about player win
(define (betWon)
  (set! pointsTotal (+ pointsTotal (* 2 pointsBet)))
  (set! pointsBet 0)
  (displayln "You won!")
  (display "You now have: ")
  (display pointsTotal)
  (displayln " points"))

; betLost: what happens when the player loses
;  Returns: Nothing of interest
;  Side effects: reset pointsBet, display a message about player loss
(define (betLost)
  (set! pointsBet 0)
  (displayln "You Lost...")
  (display "You now have: ")
  (display pointsTotal)
  (displayln " points"))

; betTie: what happens when the player ties
;  Returns: Nothing of interest
;  Side effects: reset pointsTotal and pointsBet, display a message about player tie
(define (betTie)
  (set! pointsTotal (+ pointsTotal pointsBet))
  (displayln "You Tied...")
  (display "You now have: ")
  (display pointsTotal)
  (displayln " points")
  (set! pointsBet 0))

; tests for the three betting functions above
; pointsTotal
; pointsBet
; (betPoints 100)
; pointsTotal
; pointsBet
; (betWon)
; pointsTotal
; pointsBet
; (betWon)
; pointsTotal
; pointsBet
; (betPoints 200)
; pointsTotal
; pointsBet
; (betLost)
; pointsTotal
; pointsBet
; (betLost)
; pointsTotal
; pointsBet
; (betPoints 500)
; pointsTotal
; pointsBet
; (betTie)
; pointsTotal
; pointsBet
; (betTie)

; play?: Starts a round of the game
;  Returns: Nothing of interest
;  Side effects: gets player bet, sets a shuffled deck and deal to the player and dealer.
(define (play?) ; asks player to bet
  (display "You have ")
  (display pointsTotal)
  (displayln " points")
  (display "How many points would you like to bet? ")
  (let ([pointsCheck (read)]) ; check for valid bet
    (cond
      [(> pointsCheck pointsTotal)
       (displayln "You don't have enough points")
       (play?)]
      [(< pointsCheck 0)
       (displayln "You can't bet negitive points")
       (play?)])
    (betPoints pointsCheck) ; valid bet, let player bet that amount
    (set! thedeck (shuffle make-deck)) ; reshuffle a full deck every game
    (set! playerHand (deal! thedeck))
    (set! dealerHand (deal! thedeck))
    (hitStand?)))

; hitStand?: player hits or stands based on their input
;  Returns: Nothing of interest
;  Side effects: displays the viewable game state, displays if the player busts.
(define (hitStand?)
  (show-hand dealerHand 'Part "The dealer's hand: ") ; display full playerhand
  (show-hand playerHand 'Full "Your current hand: ") ; display part dealerhand
  (display "Would you like to hit or stand? (h/s) ") ; prompt player to hit or stand
  (let ([playIn (read)])
    (cond
      [(equal? 'h playIn) ; player hits
       (hit! thedeck playerHand)
       (if (> (eval-hand playerHand) 21) ; check if player bust
           (begin
             (show-hand playerHand 'Full "Your current hand: ")
             (displayln "Bust!")
             (betLost)
             (playAgain?))
           (hitStand?))] ; else prompt player to hit or stand again
      [(equal? 's playIn) ; player stands
       (begin ; display full dealerhand before dealer turn
         (displayln "The dealer's turn...")
         (show-hand dealerHand 'Full "The dealer's hand: ")
         (dealerLoop))]
      [else ; invalid input check, has player try input again
       (displayln "Invalid input, please try again")
       (hitStand?)])))

; dealerLoop: Have the dealer hit if they're below 17 until they are over 16 or bust,
;             determine if the player wins.
;  Returns: Nothing of interest
;  Side effects: Hit into the dealer's hand.
(define (dealerLoop)
  (cond
    [(and (= (eval-hand dealerHand) 21 (eval-hand playerHand))
          (= (length dealerHand) 2 (length playerHand))) ; Player blackjack tie
     (displayln "Player and Dealer blackjack, tie!")
     (betTie)
     (playAgain?)]
    [(and (equal? (eval-hand dealerHand) 21) (equal? (length dealerHand) 2)) ; Dealer blackjack win
     (displayln "Dealer blackjack!")
     (betLost)
     (playAgain?)]
    [(and (equal? 21 (eval-hand playerHand)) (equal? 2 (length playerHand))) ; Player blackjack win
     (displayln "Player Blackjack!")
     (betWon)
     (playAgain?)]
    [(< (eval-hand dealerHand) 17) ; default dealer action, hit if 16 or less
     (hit! thedeck dealerHand)
     (show-hand dealerHand 'Full "The dealer's hand: ")
     (if (> (eval-hand dealerHand) 21) ; check if dealer bust from the hit
         (begin
           (displayln "The dealer bust!")
           (betWon)
           (playAgain?))
         (dealerLoop))]
    [else
     (cond ; if no blackjack and dealerhand > 16, check game state
       [(equal? (eval-hand playerHand) (eval-hand dealerHand))
        (betTie)
        (playAgain?)]
       [(> (eval-hand playerHand) (eval-hand dealerHand))
        (betWon)
        (playAgain?)]
       [else
        (betLost)
        (playAgain?)])]))

; playAgain?: Ask if the player wants to continue.
;             If they don't, display final point total and change in points.
;  Returns: Nothing of interest
;  Side effects: Read input to play again, display final point total and change in points.
(define (playAgain?) ; ask player if they want to keep playing
  (if (equal? pointsTotal 0)
      (begin
        (displayln
         "Sorry, you lost all 3000 of your points. Good Bye.") ; message for losing all points
        (exit)) ; terminate when player loses all points
      ((display "Would you like to play again? (y/n) ")
       (let ([playIn (read)])
         (cond
           [(equal? 'y playIn) (play?)] ; return to start so the player can play again
           [(equal? 'n playIn) ; display final points and total change in points before terminating
            (display "Final points: ")
            (displayln pointsTotal)
            (display "Change in points: ")
            (displayln (- pointsTotal 3000))
            (exit)] ; terminate program when player no longer wants to play
           [else ; invalid input check, has player try input again
            (displayln "Invalid input, please try again")
            (playAgain?)])))))

; running the game
(play?)
