! (import! &self conceptual_blending)
! (import! &self info-theoretic1)


! (let*(
         ($concepts (gpt_vector "bird" "car"))
         (()(println! $concepts))
         ($concept1 (car-atom $concepts))
         ($wrapped-concept2 (cdr-atom $concepts))
         ($concept2 (car-atom $wrapped-concept2))
         ($degree (property-degree $concept1))
         ($max (property-max $concept1 $concept2))
         ($calculated-mu-emergence (mu-emergence $degree $max))
         ($min (property-min $concept1 $concept2))
         ($calculated-mu-hqblend (mu-hqblend $calculated-mu-emergence $min))
         ($concept-pair (let (Concept $x $y) $concept1 $x))
         ($selected-network (gpt_network_selector $concept-pair))
         ($blended-concept ($selected-network $concept-pair $calculated-mu-emergence))
   )
   ($calculated-mu-hqblend ("Blend Concept" $blended-concept))
)
; Output [(0.02686799739838868 ("Blend Concept" (doubleScope (expand Spider Man) SpiderMan (extended ArachnidHero))))]