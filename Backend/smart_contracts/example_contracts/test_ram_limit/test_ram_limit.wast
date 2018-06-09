(module
 (type $FUNCSIG$vijjjj (func (param i32 i64 i64 i64 i64)))
 (type $FUNCSIG$vijj (func (param i32 i64 i64)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$j (func (result i64)))
 (type $FUNCSIG$vjj (func (param i64 i64)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$ijjjj (func (param i64 i64 i64 i64) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ijjjjii (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$vijii (func (param i32 i64 i32 i32)))
 (import "env" "abort" (func $abort))
 (import "env" "action_data_size" (func $action_data_size (result i32)))
 (import "env" "current_receiver" (func $current_receiver (result i64)))
 (import "env" "current_time" (func $current_time (result i64)))
 (import "env" "db_find_i64" (func $db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "db_next_i64" (func $db_next_i64 (param i32 i32) (result i32)))
 (import "env" "db_remove_i64" (func $db_remove_i64 (param i32)))
 (import "env" "db_store_i64" (func $db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "eosio_assert" (func $eosio_assert (param i32 i32)))
 (import "env" "memcpy" (func $memcpy (param i32 i32 i32) (result i32)))
 (import "env" "memset" (func $memset (param i32 i32 i32) (result i32)))
 (import "env" "printi" (func $printi (param i64)))
 (import "env" "printn" (func $printn (param i64)))
 (import "env" "prints" (func $prints (param i32)))
 (import "env" "printui" (func $printui (param i64)))
 (import "env" "read_action_data" (func $read_action_data (param i32 i32) (result i32)))
 (import "env" "require_auth2" (func $require_auth2 (param i64 i64)))
 (table 4 4 anyfunc)
 (elem (i32.const 0) $__wasm_nullptr $_ZN14test_ram_limit8setentryEyyyy $_ZN14test_ram_limit10printentryEyy $_ZN14test_ram_limit7rmentryEyy)
 (memory $0 1)
 (data (i32.const 4) "\10M\00\00")
 (data (i32.const 16) "onerror\00")
 (data (i32.const 32) "eosio\00")
 (data (i32.const 48) "onerror action\'s are only valid from the \"eosio\" system account\00")
 (data (i32.const 112) "test_ram_limit::printout \00")
 (data (i32.const 144) ":\00")
 (data (i32.const 160) "object passed to iterator_to is not in multi_index\00")
 (data (i32.const 224) "\nkey=\00")
 (data (i32.const 240) "could not find test_table entry\00")
 (data (i32.const 272) " size=\00")
 (data (i32.const 288) "error reading iterator\00")
 (data (i32.const 320) "read\00")
 (data (i32.const 336) "get\00")
 (data (i32.const 352) "test_ram_limit::rmentry \00")
 (data (i32.const 384) "\n\00")
 (data (i32.const 400) "cannot pass end iterator to erase\00")
 (data (i32.const 448) "cannot increment end iterator\00")
 (data (i32.const 480) "object passed to erase is not in multi_index\00")
 (data (i32.const 528) "cannot erase objects in table of another contract\00")
 (data (i32.const 592) "attempt to remove object that was not in multi_index\00")
 (data (i32.const 656) "test_ram_limit::setentry \00")
 (data (i32.const 688) "cannot pass end iterator to modify\00")
 (data (i32.const 736) "cannot create objects in table of another contract\00")
 (data (i32.const 800) "write\00")
 (data (i32.const 816) "object passed to modify is not in multi_index\00")
 (data (i32.const 864) "cannot modify objects in table of another contract\00")
 (data (i32.const 928) "updater cannot change primary key when modifying an object\00")
 (data (i32.const 9392) "malloc_from_freed was designed to only be called after _heap was completely allocated\00")
 (export "memory" (memory $0))
 (export "_ZeqRK11checksum256S1_" (func $_ZeqRK11checksum256S1_))
 (export "_ZeqRK11checksum160S1_" (func $_ZeqRK11checksum160S1_))
 (export "_ZneRK11checksum160S1_" (func $_ZneRK11checksum160S1_))
 (export "now" (func $now))
 (export "_ZN5eosio12require_authERKNS_16permission_levelE" (func $_ZN5eosio12require_authERKNS_16permission_levelE))
 (export "apply" (func $apply))
 (export "memcmp" (func $memcmp))
 (export "malloc" (func $malloc))
 (export "free" (func $free))
 (func $_ZeqRK11checksum256S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZeqRK11checksum160S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZneRK11checksum160S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
   (i32.const 0)
  )
 )
 (func $now (result i32)
  (i32.wrap/i64
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
 )
 (func $_ZN5eosio12require_authERKNS_16permission_levelE (param $0 i32)
  (call $require_auth2
   (i64.load
    (get_local $0)
   )
   (i64.load offset=8
    (get_local $0)
   )
  )
 )
 (func $apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (set_local $6
   (i64.const 0)
  )
  (set_local $5
   (i64.const 59)
  )
  (set_local $4
   (i32.const 16)
  )
  (set_local $7
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $6)
          (i64.const 6)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $3
             (i32.load8_s
              (get_local $4)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $8
        (i64.const 0)
       )
       (br_if $label$2
        (i64.le_u
         (get_local $6)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $3
       (select
        (i32.add
         (get_local $3)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $3)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $8
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $8
     (i64.shl
      (i64.and
       (get_local $8)
       (i64.const 31)
      )
      (i64.and
       (get_local $5)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $4
    (i32.add
     (get_local $4)
     (i32.const 1)
    )
   )
   (set_local $6
    (i64.add
     (get_local $6)
     (i64.const 1)
    )
   )
   (set_local $7
    (i64.or
     (get_local $8)
     (get_local $7)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $5
      (i64.add
       (get_local $5)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i64.ne
     (get_local $7)
     (get_local $2)
    )
   )
   (set_local $6
    (i64.const 0)
   )
   (set_local $5
    (i64.const 59)
   )
   (set_local $4
    (i32.const 32)
   )
   (set_local $7
    (i64.const 0)
   )
   (loop $label$7
    (block $label$8
     (block $label$9
      (block $label$10
       (block $label$11
        (block $label$12
         (br_if $label$12
          (i64.gt_u
           (get_local $6)
           (i64.const 4)
          )
         )
         (br_if $label$11
          (i32.gt_u
           (i32.and
            (i32.add
             (tee_local $3
              (i32.load8_s
               (get_local $4)
              )
             )
             (i32.const -97)
            )
            (i32.const 255)
           )
           (i32.const 25)
          )
         )
         (set_local $3
          (i32.add
           (get_local $3)
           (i32.const 165)
          )
         )
         (br $label$10)
        )
        (set_local $8
         (i64.const 0)
        )
        (br_if $label$9
         (i64.le_u
          (get_local $6)
          (i64.const 11)
         )
        )
        (br $label$8)
       )
       (set_local $3
        (select
         (i32.add
          (get_local $3)
          (i32.const 208)
         )
         (i32.const 0)
         (i32.lt_u
          (i32.and
           (i32.add
            (get_local $3)
            (i32.const -49)
           )
           (i32.const 255)
          )
          (i32.const 5)
         )
        )
       )
      )
      (set_local $8
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $3)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (set_local $8
      (i64.shl
       (i64.and
        (get_local $8)
        (i64.const 31)
       )
       (i64.and
        (get_local $5)
        (i64.const 4294967295)
       )
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (set_local $6
     (i64.add
      (get_local $6)
      (i64.const 1)
     )
    )
    (set_local $7
     (i64.or
      (get_local $8)
      (get_local $7)
     )
    )
    (br_if $label$7
     (i64.ne
      (tee_local $5
       (i64.add
        (get_local $5)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (call $eosio_assert
    (i64.eq
     (get_local $7)
     (get_local $1)
    )
    (i32.const 48)
   )
  )
  (block $label$13
   (block $label$14
    (br_if $label$14
     (i64.eq
      (get_local $1)
      (get_local $0)
     )
    )
    (set_local $6
     (i64.const 0)
    )
    (set_local $5
     (i64.const 59)
    )
    (set_local $4
     (i32.const 16)
    )
    (set_local $7
     (i64.const 0)
    )
    (loop $label$15
     (block $label$16
      (block $label$17
       (block $label$18
        (block $label$19
         (block $label$20
          (br_if $label$20
           (i64.gt_u
            (get_local $6)
            (i64.const 6)
           )
          )
          (br_if $label$19
           (i32.gt_u
            (i32.and
             (i32.add
              (tee_local $3
               (i32.load8_s
                (get_local $4)
               )
              )
              (i32.const -97)
             )
             (i32.const 255)
            )
            (i32.const 25)
           )
          )
          (set_local $3
           (i32.add
            (get_local $3)
            (i32.const 165)
           )
          )
          (br $label$18)
         )
         (set_local $8
          (i64.const 0)
         )
         (br_if $label$17
          (i64.le_u
           (get_local $6)
           (i64.const 11)
          )
         )
         (br $label$16)
        )
        (set_local $3
         (select
          (i32.add
           (get_local $3)
           (i32.const 208)
          )
          (i32.const 0)
          (i32.lt_u
           (i32.and
            (i32.add
             (get_local $3)
             (i32.const -49)
            )
            (i32.const 255)
           )
           (i32.const 5)
          )
         )
        )
       )
       (set_local $8
        (i64.shr_s
         (i64.shl
          (i64.extend_u/i32
           (get_local $3)
          )
          (i64.const 56)
         )
         (i64.const 56)
        )
       )
      )
      (set_local $8
       (i64.shl
        (i64.and
         (get_local $8)
         (i64.const 31)
        )
        (i64.and
         (get_local $5)
         (i64.const 4294967295)
        )
       )
      )
     )
     (set_local $4
      (i32.add
       (get_local $4)
       (i32.const 1)
      )
     )
     (set_local $6
      (i64.add
       (get_local $6)
       (i64.const 1)
      )
     )
     (set_local $7
      (i64.or
       (get_local $8)
       (get_local $7)
      )
     )
     (br_if $label$15
      (i64.ne
       (tee_local $5
        (i64.add
         (get_local $5)
         (i64.const -5)
        )
       )
       (i64.const -6)
      )
     )
    )
    (br_if $label$13
     (i64.ne
      (get_local $7)
      (get_local $2)
     )
    )
   )
   (i32.store offset=56
    (get_local $9)
    (i32.const 300)
   )
   (i64.store offset=48
    (get_local $9)
    (get_local $0)
   )
   (block $label$21
    (block $label$22
     (br_if $label$22
      (i64.eq
       (get_local $2)
       (i64.const -5918507632410263552)
      )
     )
     (br_if $label$21
      (i64.eq
       (get_local $2)
       (i64.const -4857909691352612864)
      )
     )
     (br_if $label$13
      (i64.ne
       (get_local $2)
       (i64.const -4417281474928050176)
      )
     )
     (i32.store offset=44
      (get_local $9)
      (i32.const 0)
     )
     (i32.store offset=40
      (get_local $9)
      (i32.const 1)
     )
     (i64.store align=4
      (get_local $9)
      (i64.load offset=40
       (get_local $9)
      )
     )
     (drop
      (call $_ZN5eosio14execute_actionI14test_ram_limitS1_JyyyyEEEbPT_MT0_FvDpT1_E
       (i32.add
        (get_local $9)
        (i32.const 48)
       )
       (get_local $9)
      )
     )
     (br $label$13)
    )
    (i32.store offset=28
     (get_local $9)
     (i32.const 0)
    )
    (i32.store offset=24
     (get_local $9)
     (i32.const 2)
    )
    (i64.store offset=16 align=4
     (get_local $9)
     (i64.load offset=24
      (get_local $9)
     )
    )
    (drop
     (call $_ZN5eosio14execute_actionI14test_ram_limitS1_JyyEEEbPT_MT0_FvDpT1_E
      (i32.add
       (get_local $9)
       (i32.const 48)
      )
      (i32.add
       (get_local $9)
       (i32.const 16)
      )
     )
    )
    (br $label$13)
   )
   (i32.store offset=36
    (get_local $9)
    (i32.const 0)
   )
   (i32.store offset=32
    (get_local $9)
    (i32.const 3)
   )
   (i64.store offset=8 align=4
    (get_local $9)
    (i64.load offset=32
     (get_local $9)
    )
   )
   (drop
    (call $_ZN5eosio14execute_actionI14test_ram_limitS1_JyyEEEbPT_MT0_FvDpT1_E
     (i32.add
      (get_local $9)
      (i32.const 48)
     )
     (i32.add
      (get_local $9)
      (i32.const 8)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 64)
   )
  )
 )
 (func $_ZN14test_ram_limit8setentryEyyyy (type $FUNCSIG$vijjjj) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $13
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (set_local $11
   (i64.load
    (get_local $0)
   )
  )
  (call $prints
   (i32.const 656)
  )
  (call $printn
   (get_local $11)
  )
  (call $prints
   (i32.const 384)
  )
  (i32.store
   (i32.add
    (get_local $13)
    (i32.const 56)
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $13)
   (get_local $11)
  )
  (i64.store offset=24
   (get_local $13)
   (get_local $11)
  )
  (i64.store offset=40
   (get_local $13)
   (i64.const -1)
  )
  (i64.store offset=48
   (get_local $13)
   (i64.const 0)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i64.gt_u
      (tee_local $11
       (i64.shr_s
        (i64.shl
         (get_local $2)
         (i64.const 32)
        )
        (i64.const 32)
       )
      )
      (get_local $3)
     )
    )
    (set_local $7
     (i32.add
      (i32.add
       (get_local $13)
       (i32.const 24)
      )
      (i32.const 8)
     )
    )
    (set_local $8
     (i32.add
      (get_local $13)
      (i32.const 48)
     )
    )
    (set_local $9
     (i32.add
      (get_local $13)
      (i32.const 52)
     )
    )
    (set_local $10
     (i32.const 0)
    )
    (set_local $12
     (i32.const 0)
    )
    (block $label$2
     (br_if $label$2
      (i32.ne
       (i32.const 0)
       (i32.const 0)
      )
     )
     (set_local $14
      (i32.const 2)
     )
     (br $label$0)
    )
    (set_local $14
     (i32.const 7)
    )
    (br $label$0)
   )
   (set_local $14
    (i32.const 18)
   )
  )
  (loop $label$3
   (block $label$4
    (block $label$5
     (block $label$6
      (block $label$7
       (block $label$8
        (block $label$9
         (block $label$10
          (block $label$11
           (block $label$12
            (block $label$13
             (block $label$14
              (block $label$15
               (block $label$16
                (block $label$17
                 (block $label$18
                  (block $label$19
                   (block $label$20
                    (block $label$21
                     (block $label$22
                      (block $label$23
                       (block $label$24
                        (block $label$25
                         (block $label$26
                          (block $label$27
                           (block $label$28
                            (block $label$29
                             (block $label$30
                              (block $label$31
                               (block $label$32
                                (block $label$33
                                 (block $label$34
                                  (block $label$35
                                   (block $label$36
                                    (block $label$37
                                     (block $label$38
                                      (block $label$39
                                       (block $label$40
                                        (block $label$41
                                         (block $label$42
                                          (br_table $label$33 $label$32 $label$42 $label$41 $label$38 $label$36 $label$35 $label$34 $label$31 $label$30 $label$29 $label$28 $label$27 $label$26 $label$25 $label$24 $label$23 $label$21 $label$20 $label$22 $label$37 $label$40 $label$39 $label$39
                                           (get_local $14)
                                          )
                                         )
                                         (br_if $label$15
                                          (i32.eq
                                           (get_local $12)
                                           (get_local $10)
                                          )
                                         )
                                         (set_local $14
                                          (i32.const 3)
                                         )
                                         (br $label$3)
                                        )
                                        (call $eosio_assert
                                         (i32.eq
                                          (i32.load offset=20
                                           (tee_local $0
                                            (i32.load
                                             (i32.add
                                              (get_local $12)
                                              (i32.const -24)
                                             )
                                            )
                                           )
                                          )
                                          (i32.add
                                           (get_local $13)
                                           (i32.const 24)
                                          )
                                         )
                                         (i32.const 160)
                                        )
                                        (br_if $label$13
                                         (get_local $0)
                                        )
                                        (br $label$14)
                                       )
                                       (br_if $label$4
                                        (i32.lt_s
                                         (tee_local $0
                                          (call $db_find_i64
                                           (i64.load offset=24
                                            (get_local $13)
                                           )
                                           (i64.load
                                            (get_local $7)
                                           )
                                           (i64.const -3841130244651450368)
                                           (get_local $11)
                                          )
                                         )
                                         (i32.const 0)
                                        )
                                       )
                                       (set_local $14
                                        (i32.const 22)
                                       )
                                       (br $label$3)
                                      )
                                      (call $eosio_assert
                                       (i32.eq
                                        (i32.load offset=20
                                         (tee_local $0
                                          (call $_ZNK5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE31load_object_by_primary_iteratorEl
                                           (i32.add
                                            (get_local $13)
                                            (i32.const 24)
                                           )
                                           (get_local $0)
                                          )
                                         )
                                        )
                                        (i32.add
                                         (get_local $13)
                                         (i32.const 24)
                                        )
                                       )
                                       (i32.const 160)
                                      )
                                      (set_local $14
                                       (i32.const 4)
                                      )
                                      (br $label$3)
                                     )
                                     (i64.store offset=8
                                      (get_local $13)
                                      (get_local $4)
                                     )
                                     (call $eosio_assert
                                      (i32.const 1)
                                      (i32.const 688)
                                     )
                                     (call $_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE6modifyIZNS1_8setentryEyyyyEUlRS2_E_EEvRKS2_yOT_
                                      (i32.add
                                       (get_local $13)
                                       (i32.const 24)
                                      )
                                      (get_local $0)
                                      (get_local $1)
                                      (i32.add
                                       (get_local $13)
                                       (i32.const 8)
                                      )
                                     )
                                     (br $label$12)
                                    )
                                    (i64.store
                                     (i32.add
                                      (i32.add
                                       (get_local $13)
                                       (i32.const 8)
                                      )
                                      (i32.const 8)
                                     )
                                     (get_local $4)
                                    )
                                    (i64.store32 offset=8
                                     (get_local $13)
                                     (get_local $11)
                                    )
                                    (call $_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_
                                     (get_local $13)
                                     (i32.add
                                      (get_local $13)
                                      (i32.const 24)
                                     )
                                     (get_local $1)
                                     (i32.add
                                      (get_local $13)
                                      (i32.const 8)
                                     )
                                    )
                                    (set_local $14
                                     (i32.const 5)
                                    )
                                    (br $label$3)
                                   )
                                   (br_if $label$11
                                    (i64.gt_u
                                     (tee_local $11
                                      (i64.add
                                       (get_local $11)
                                       (i64.const 1)
                                      )
                                     )
                                     (get_local $3)
                                    )
                                   )
                                   (set_local $14
                                    (i32.const 6)
                                   )
                                   (br $label$3)
                                  )
                                  (br_if $label$16
                                   (i32.eq
                                    (tee_local $12
                                     (i32.load
                                      (get_local $9)
                                     )
                                    )
                                    (tee_local $10
                                     (i32.load
                                      (get_local $8)
                                     )
                                    )
                                   )
                                  )
                                  (set_local $14
                                   (i32.const 7)
                                  )
                                  (br $label$3)
                                 )
                                 (set_local $0
                                  (i32.add
                                   (get_local $12)
                                   (i32.const -24)
                                  )
                                 )
                                 (set_local $5
                                  (i32.sub
                                   (i32.const 0)
                                   (get_local $10)
                                  )
                                 )
                                 (set_local $14
                                  (i32.const 0)
                                 )
                                 (br $label$3)
                                )
                                (br_if $label$19
                                 (i64.eq
                                  (i64.load
                                   (i32.load
                                    (get_local $0)
                                   )
                                  )
                                  (get_local $11)
                                 )
                                )
                                (set_local $14
                                 (i32.const 1)
                                )
                                (br $label$3)
                               )
                               (set_local $12
                                (get_local $0)
                               )
                               (set_local $0
                                (tee_local $6
                                 (i32.add
                                  (get_local $0)
                                  (i32.const -24)
                                 )
                                )
                               )
                               (br_if $label$17
                                (i32.ne
                                 (i32.add
                                  (get_local $6)
                                  (get_local $5)
                                 )
                                 (i32.const -24)
                                )
                               )
                               (br $label$18)
                              )
                              (br_if $label$10
                               (i32.eqz
                                (tee_local $5
                                 (i32.load offset=48
                                  (get_local $13)
                                 )
                                )
                               )
                              )
                              (set_local $14
                               (i32.const 9)
                              )
                              (br $label$3)
                             )
                             (br_if $label$9
                              (i32.eq
                               (tee_local $0
                                (i32.load
                                 (tee_local $10
                                  (i32.add
                                   (get_local $13)
                                   (i32.const 52)
                                  )
                                 )
                                )
                               )
                               (get_local $5)
                              )
                             )
                             (set_local $14
                              (i32.const 10)
                             )
                             (br $label$3)
                            )
                            (set_local $14
                             (i32.const 11)
                            )
                            (br $label$3)
                           )
                           (set_local $6
                            (i32.load
                             (tee_local $0
                              (i32.add
                               (get_local $0)
                               (i32.const -24)
                              )
                             )
                            )
                           )
                           (i32.store
                            (get_local $0)
                            (i32.const 0)
                           )
                           (br_if $label$7
                            (i32.eqz
                             (get_local $6)
                            )
                           )
                           (set_local $14
                            (i32.const 12)
                           )
                           (br $label$3)
                          )
                          (br_if $label$6
                           (i32.eqz
                            (tee_local $12
                             (i32.load offset=8
                              (get_local $6)
                             )
                            )
                           )
                          )
                          (set_local $14
                           (i32.const 13)
                          )
                          (br $label$3)
                         )
                         (i32.store
                          (i32.add
                           (get_local $6)
                           (i32.const 12)
                          )
                          (get_local $12)
                         )
                         (call $_ZdlPv
                          (get_local $12)
                         )
                         (set_local $14
                          (i32.const 14)
                         )
                         (br $label$3)
                        )
                        (call $_ZdlPv
                         (get_local $6)
                        )
                        (set_local $14
                         (i32.const 15)
                        )
                        (br $label$3)
                       )
                       (br_if $label$8
                        (i32.ne
                         (get_local $5)
                         (get_local $0)
                        )
                       )
                       (set_local $14
                        (i32.const 16)
                       )
                       (br $label$3)
                      )
                      (set_local $0
                       (i32.load
                        (i32.add
                         (get_local $13)
                         (i32.const 48)
                        )
                       )
                      )
                      (br $label$5)
                     )
                     (set_local $0
                      (get_local $5)
                     )
                     (set_local $14
                      (i32.const 17)
                     )
                     (br $label$3)
                    )
                    (i32.store
                     (get_local $10)
                     (get_local $5)
                    )
                    (call $_ZdlPv
                     (get_local $0)
                    )
                    (set_local $14
                     (i32.const 18)
                    )
                    (br $label$3)
                   )
                   (i32.store offset=4
                    (i32.const 0)
                    (i32.add
                     (get_local $13)
                     (i32.const 64)
                    )
                   )
                   (return)
                  )
                  (set_local $14
                   (i32.const 2)
                  )
                  (br $label$3)
                 )
                 (set_local $14
                  (i32.const 2)
                 )
                 (br $label$3)
                )
                (set_local $14
                 (i32.const 0)
                )
                (br $label$3)
               )
               (set_local $14
                (i32.const 2)
               )
               (br $label$3)
              )
              (set_local $14
               (i32.const 21)
              )
              (br $label$3)
             )
             (set_local $14
              (i32.const 20)
             )
             (br $label$3)
            )
            (set_local $14
             (i32.const 4)
            )
            (br $label$3)
           )
           (set_local $14
            (i32.const 5)
           )
           (br $label$3)
          )
          (set_local $14
           (i32.const 8)
          )
          (br $label$3)
         )
         (set_local $14
          (i32.const 18)
         )
         (br $label$3)
        )
        (set_local $14
         (i32.const 19)
        )
        (br $label$3)
       )
       (set_local $14
        (i32.const 11)
       )
       (br $label$3)
      )
      (set_local $14
       (i32.const 15)
      )
      (br $label$3)
     )
     (set_local $14
      (i32.const 14)
     )
     (br $label$3)
    )
    (set_local $14
     (i32.const 17)
    )
    (br $label$3)
   )
   (set_local $14
    (i32.const 20)
   )
   (br $label$3)
  )
 )
 (func $_ZN5eosio14execute_actionI14test_ram_limitS1_JyyyyEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (set_local $9
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $10)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $8
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (tee_local $3
         (call $action_data_size)
        )
       )
      )
      (br_if $label$2
       (i32.lt_u
        (get_local $3)
        (i32.const 513)
       )
      )
      (set_local $1
       (call $malloc
        (get_local $3)
       )
      )
      (br $label$1)
     )
     (set_local $1
      (i32.const 0)
     )
     (br $label$0)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $1
      (i32.sub
       (get_local $10)
       (i32.and
        (i32.add
         (get_local $3)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $1)
     (get_local $3)
    )
   )
  )
  (i64.store offset=8
   (get_local $9)
   (i64.const 0)
  )
  (i64.store
   (get_local $9)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $9)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $9)
   (i64.const 0)
  )
  (i32.store offset=36
   (get_local $9)
   (get_local $1)
  )
  (i32.store offset=32
   (get_local $9)
   (get_local $1)
  )
  (i32.store offset=40
   (get_local $9)
   (i32.add
    (get_local $1)
    (get_local $3)
   )
  )
  (i32.store offset=48
   (get_local $9)
   (i32.add
    (get_local $9)
    (i32.const 32)
   )
  )
  (i32.store offset=56
   (get_local $9)
   (get_local $9)
  )
  (call $_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyyEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyyEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_
   (i32.add
    (get_local $9)
    (i32.const 56)
   )
   (i32.add
    (get_local $9)
    (i32.const 48)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $3)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $1)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (set_local $7
   (i64.load
    (i32.add
     (get_local $9)
     (i32.const 24)
    )
   )
  )
  (set_local $6
   (i64.load
    (i32.add
     (get_local $9)
     (i32.const 16)
    )
   )
  )
  (set_local $5
   (i64.load
    (i32.add
     (get_local $9)
     (i32.const 8)
    )
   )
  )
  (set_local $4
   (i64.load
    (get_local $9)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $8
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $8)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vijjjj)
   (get_local $1)
   (get_local $4)
   (get_local $5)
   (get_local $6)
   (get_local $7)
   (get_local $8)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 64)
   )
  )
  (i32.const 1)
 )
 (func $_ZN14test_ram_limit7rmentryEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $9
   (i64.load
    (get_local $0)
   )
  )
  (call $prints
   (i32.const 352)
  )
  (call $printn
   (get_local $9)
  )
  (call $prints
   (i32.const 384)
  )
  (i32.store
   (i32.add
    (get_local $11)
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $11)
   (get_local $9)
  )
  (i64.store
   (get_local $11)
   (get_local $9)
  )
  (i64.store offset=16
   (get_local $11)
   (i64.const -1)
  )
  (i64.store offset=24
   (get_local $11)
   (i64.const 0)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i64.gt_u
      (tee_local $9
       (i64.shr_s
        (i64.shl
         (get_local $1)
         (i64.const 32)
        )
        (i64.const 32)
       )
      )
      (get_local $2)
     )
    )
    (set_local $5
     (i32.add
      (get_local $11)
      (i32.const 8)
     )
    )
    (set_local $6
     (i32.add
      (get_local $11)
      (i32.const 24)
     )
    )
    (set_local $7
     (i32.add
      (get_local $11)
      (i32.const 28)
     )
    )
    (set_local $8
     (i32.const 0)
    )
    (set_local $10
     (i32.const 0)
    )
    (block $label$2
     (br_if $label$2
      (i32.ne
       (i32.const 0)
       (i32.const 0)
      )
     )
     (set_local $12
      (i32.const 2)
     )
     (br $label$0)
    )
    (set_local $12
     (i32.const 8)
    )
    (br $label$0)
   )
   (set_local $12
    (i32.const 19)
   )
  )
  (loop $label$3
   (block $label$4
    (block $label$5
     (block $label$6
      (block $label$7
       (block $label$8
        (block $label$9
         (block $label$10
          (block $label$11
           (block $label$12
            (block $label$13
             (block $label$14
              (block $label$15
               (block $label$16
                (block $label$17
                 (block $label$18
                  (block $label$19
                   (block $label$20
                    (block $label$21
                     (block $label$22
                      (block $label$23
                       (block $label$24
                        (block $label$25
                         (block $label$26
                          (block $label$27
                           (block $label$28
                            (block $label$29
                             (block $label$30
                              (block $label$31
                               (block $label$32
                                (block $label$33
                                 (block $label$34
                                  (block $label$35
                                   (block $label$36
                                    (block $label$37
                                     (block $label$38
                                      (block $label$39
                                       (block $label$40
                                        (block $label$41
                                         (br_table $label$32 $label$31 $label$41 $label$40 $label$37 $label$36 $label$35 $label$34 $label$33 $label$30 $label$29 $label$28 $label$27 $label$26 $label$25 $label$24 $label$23 $label$22 $label$20 $label$19 $label$21 $label$39 $label$38 $label$38
                                          (get_local $12)
                                         )
                                        )
                                        (br_if $label$14
                                         (i32.eq
                                          (get_local $10)
                                          (get_local $8)
                                         )
                                        )
                                        (set_local $12
                                         (i32.const 3)
                                        )
                                        (br $label$3)
                                       )
                                       (call $eosio_assert
                                        (i32.eq
                                         (i32.load offset=20
                                          (tee_local $0
                                           (i32.load
                                            (i32.add
                                             (get_local $10)
                                             (i32.const -24)
                                            )
                                           )
                                          )
                                         )
                                         (get_local $11)
                                        )
                                        (i32.const 160)
                                       )
                                       (br $label$13)
                                      )
                                      (set_local $0
                                       (i32.const 0)
                                      )
                                      (br_if $label$12
                                       (i32.lt_s
                                        (tee_local $4
                                         (call $db_find_i64
                                          (i64.load
                                           (get_local $11)
                                          )
                                          (i64.load
                                           (get_local $5)
                                          )
                                          (i64.const -3841130244651450368)
                                          (get_local $9)
                                         )
                                        )
                                        (i32.const 0)
                                       )
                                      )
                                      (set_local $12
                                       (i32.const 22)
                                      )
                                      (br $label$3)
                                     )
                                     (call $eosio_assert
                                      (i32.eq
                                       (i32.load offset=20
                                        (tee_local $0
                                         (call $_ZNK5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE31load_object_by_primary_iteratorEl
                                          (get_local $11)
                                          (get_local $4)
                                         )
                                        )
                                       )
                                       (get_local $11)
                                      )
                                      (i32.const 160)
                                     )
                                     (set_local $12
                                      (i32.const 4)
                                     )
                                     (br $label$3)
                                    )
                                    (call $eosio_assert
                                     (tee_local $4
                                      (i32.ne
                                       (get_local $0)
                                       (i32.const 0)
                                      )
                                     )
                                     (i32.const 240)
                                    )
                                    (call $eosio_assert
                                     (get_local $4)
                                     (i32.const 400)
                                    )
                                    (call $eosio_assert
                                     (get_local $4)
                                     (i32.const 448)
                                    )
                                    (br_if $label$11
                                     (i32.lt_s
                                      (tee_local $4
                                       (call $db_next_i64
                                        (i32.load offset=24
                                         (get_local $0)
                                        )
                                        (i32.add
                                         (get_local $11)
                                         (i32.const 40)
                                        )
                                       )
                                      )
                                      (i32.const 0)
                                     )
                                    )
                                    (set_local $12
                                     (i32.const 5)
                                    )
                                    (br $label$3)
                                   )
                                   (drop
                                    (call $_ZNK5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE31load_object_by_primary_iteratorEl
                                     (get_local $11)
                                     (get_local $4)
                                    )
                                   )
                                   (set_local $12
                                    (i32.const 6)
                                   )
                                   (br $label$3)
                                  )
                                  (call $_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE5eraseERKS2_
                                   (get_local $11)
                                   (get_local $0)
                                  )
                                  (br_if $label$10
                                   (i64.gt_u
                                    (tee_local $9
                                     (i64.add
                                      (get_local $9)
                                      (i64.const 1)
                                     )
                                    )
                                    (get_local $2)
                                   )
                                  )
                                  (set_local $12
                                   (i32.const 7)
                                  )
                                  (br $label$3)
                                 )
                                 (br_if $label$15
                                  (i32.eq
                                   (tee_local $10
                                    (i32.load
                                     (get_local $7)
                                    )
                                   )
                                   (tee_local $8
                                    (i32.load
                                     (get_local $6)
                                    )
                                   )
                                  )
                                 )
                                 (set_local $12
                                  (i32.const 8)
                                 )
                                 (br $label$3)
                                )
                                (set_local $0
                                 (i32.add
                                  (get_local $10)
                                  (i32.const -24)
                                 )
                                )
                                (set_local $3
                                 (i32.sub
                                  (i32.const 0)
                                  (get_local $8)
                                 )
                                )
                                (set_local $12
                                 (i32.const 0)
                                )
                                (br $label$3)
                               )
                               (br_if $label$18
                                (i64.eq
                                 (i64.load
                                  (i32.load
                                   (get_local $0)
                                  )
                                 )
                                 (get_local $9)
                                )
                               )
                               (set_local $12
                                (i32.const 1)
                               )
                               (br $label$3)
                              )
                              (set_local $10
                               (get_local $0)
                              )
                              (set_local $0
                               (tee_local $4
                                (i32.add
                                 (get_local $0)
                                 (i32.const -24)
                                )
                               )
                              )
                              (br_if $label$16
                               (i32.ne
                                (i32.add
                                 (get_local $4)
                                 (get_local $3)
                                )
                                (i32.const -24)
                               )
                              )
                              (br $label$17)
                             )
                             (br_if $label$9
                              (i32.eqz
                               (tee_local $3
                                (i32.load offset=24
                                 (get_local $11)
                                )
                               )
                              )
                             )
                             (set_local $12
                              (i32.const 10)
                             )
                             (br $label$3)
                            )
                            (br_if $label$8
                             (i32.eq
                              (tee_local $0
                               (i32.load
                                (tee_local $8
                                 (i32.add
                                  (get_local $11)
                                  (i32.const 28)
                                 )
                                )
                               )
                              )
                              (get_local $3)
                             )
                            )
                            (set_local $12
                             (i32.const 11)
                            )
                            (br $label$3)
                           )
                           (set_local $12
                            (i32.const 12)
                           )
                           (br $label$3)
                          )
                          (set_local $4
                           (i32.load
                            (tee_local $0
                             (i32.add
                              (get_local $0)
                              (i32.const -24)
                             )
                            )
                           )
                          )
                          (i32.store
                           (get_local $0)
                           (i32.const 0)
                          )
                          (br_if $label$6
                           (i32.eqz
                            (get_local $4)
                           )
                          )
                          (set_local $12
                           (i32.const 13)
                          )
                          (br $label$3)
                         )
                         (br_if $label$5
                          (i32.eqz
                           (tee_local $10
                            (i32.load offset=8
                             (get_local $4)
                            )
                           )
                          )
                         )
                         (set_local $12
                          (i32.const 14)
                         )
                         (br $label$3)
                        )
                        (i32.store
                         (i32.add
                          (get_local $4)
                          (i32.const 12)
                         )
                         (get_local $10)
                        )
                        (call $_ZdlPv
                         (get_local $10)
                        )
                        (set_local $12
                         (i32.const 15)
                        )
                        (br $label$3)
                       )
                       (call $_ZdlPv
                        (get_local $4)
                       )
                       (set_local $12
                        (i32.const 16)
                       )
                       (br $label$3)
                      )
                      (br_if $label$7
                       (i32.ne
                        (get_local $3)
                        (get_local $0)
                       )
                      )
                      (set_local $12
                       (i32.const 17)
                      )
                      (br $label$3)
                     )
                     (set_local $0
                      (i32.load
                       (i32.add
                        (get_local $11)
                        (i32.const 24)
                       )
                      )
                     )
                     (br $label$4)
                    )
                    (set_local $0
                     (get_local $3)
                    )
                    (set_local $12
                     (i32.const 18)
                    )
                    (br $label$3)
                   )
                   (i32.store
                    (get_local $8)
                    (get_local $3)
                   )
                   (call $_ZdlPv
                    (get_local $0)
                   )
                   (set_local $12
                    (i32.const 19)
                   )
                   (br $label$3)
                  )
                  (i32.store offset=4
                   (i32.const 0)
                   (i32.add
                    (get_local $11)
                    (i32.const 48)
                   )
                  )
                  (return)
                 )
                 (set_local $12
                  (i32.const 2)
                 )
                 (br $label$3)
                )
                (set_local $12
                 (i32.const 2)
                )
                (br $label$3)
               )
               (set_local $12
                (i32.const 0)
               )
               (br $label$3)
              )
              (set_local $12
               (i32.const 2)
              )
              (br $label$3)
             )
             (set_local $12
              (i32.const 21)
             )
             (br $label$3)
            )
            (set_local $12
             (i32.const 4)
            )
            (br $label$3)
           )
           (set_local $12
            (i32.const 4)
           )
           (br $label$3)
          )
          (set_local $12
           (i32.const 6)
          )
          (br $label$3)
         )
         (set_local $12
          (i32.const 9)
         )
         (br $label$3)
        )
        (set_local $12
         (i32.const 19)
        )
        (br $label$3)
       )
       (set_local $12
        (i32.const 20)
       )
       (br $label$3)
      )
      (set_local $12
       (i32.const 12)
      )
      (br $label$3)
     )
     (set_local $12
      (i32.const 16)
     )
     (br $label$3)
    )
    (set_local $12
     (i32.const 15)
    )
    (br $label$3)
   )
   (set_local $12
    (i32.const 18)
   )
   (br $label$3)
  )
 )
 (func $_ZN5eosio14execute_actionI14test_ram_limitS1_JyyEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $8
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $6)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $7
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (tee_local $1
         (call $action_data_size)
        )
       )
      )
      (br_if $label$2
       (i32.lt_u
        (get_local $1)
        (i32.const 513)
       )
      )
      (set_local $6
       (call $malloc
        (get_local $1)
       )
      )
      (br $label$1)
     )
     (set_local $6
      (i32.const 0)
     )
     (br $label$0)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $6
      (i32.sub
       (get_local $6)
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $6)
     (get_local $1)
    )
   )
  )
  (i64.store offset=8
   (get_local $8)
   (i64.const 0)
  )
  (i64.store
   (get_local $8)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $1)
    (i32.const 7)
   )
   (i32.const 320)
  )
  (drop
   (call $memcpy
    (get_local $8)
    (get_local $6)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.and
     (get_local $1)
     (i32.const -8)
    )
    (i32.const 8)
   )
   (i32.const 320)
  )
  (drop
   (call $memcpy
    (tee_local $5
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $1)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $6)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (set_local $4
   (i64.load
    (get_local $5)
   )
  )
  (set_local $3
   (i64.load
    (get_local $8)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $7
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $7)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vijj)
   (get_local $1)
   (get_local $3)
   (get_local $4)
   (get_local $7)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (i32.const 1)
 )
 (func $_ZN14test_ram_limit10printentryEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $9
   (i64.load
    (get_local $0)
   )
  )
  (call $prints
   (i32.const 112)
  )
  (call $printn
   (get_local $9)
  )
  (call $prints
   (i32.const 144)
  )
  (i32.store
   (i32.add
    (get_local $11)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $11)
   (get_local $9)
  )
  (i64.store offset=8
   (get_local $11)
   (get_local $9)
  )
  (i64.store offset=24
   (get_local $11)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $11)
   (i64.const 0)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i64.gt_u
      (tee_local $9
       (i64.shr_s
        (i64.shl
         (get_local $1)
         (i64.const 32)
        )
        (i64.const 32)
       )
      )
      (get_local $2)
     )
    )
    (set_local $5
     (i32.add
      (get_local $11)
      (i32.const 16)
     )
    )
    (set_local $6
     (i32.add
      (get_local $11)
      (i32.const 32)
     )
    )
    (set_local $7
     (i32.add
      (get_local $11)
      (i32.const 36)
     )
    )
    (set_local $8
     (i32.const 0)
    )
    (set_local $10
     (i32.const 0)
    )
    (block $label$2
     (br_if $label$2
      (i32.ne
       (i32.const 0)
       (i32.const 0)
      )
     )
     (set_local $12
      (i32.const 2)
     )
     (br $label$0)
    )
    (set_local $12
     (i32.const 6)
    )
    (br $label$0)
   )
   (set_local $12
    (i32.const 17)
   )
  )
  (loop $label$3
   (block $label$4
    (block $label$5
     (block $label$6
      (block $label$7
       (block $label$8
        (block $label$9
         (block $label$10
          (block $label$11
           (block $label$12
            (block $label$13
             (block $label$14
              (block $label$15
               (block $label$16
                (block $label$17
                 (block $label$18
                  (block $label$19
                   (block $label$20
                    (block $label$21
                     (block $label$22
                      (block $label$23
                       (block $label$24
                        (block $label$25
                         (block $label$26
                          (block $label$27
                           (block $label$28
                            (block $label$29
                             (block $label$30
                              (block $label$31
                               (block $label$32
                                (block $label$33
                                 (block $label$34
                                  (block $label$35
                                   (block $label$36
                                    (block $label$37
                                     (block $label$38
                                      (br_table $label$31 $label$30 $label$38 $label$37 $label$34 $label$33 $label$32 $label$29 $label$28 $label$27 $label$26 $label$25 $label$24 $label$23 $label$22 $label$21 $label$19 $label$18 $label$20 $label$36 $label$35 $label$35
                                       (get_local $12)
                                      )
                                     )
                                     (br_if $label$13
                                      (i32.eq
                                       (get_local $10)
                                       (get_local $8)
                                      )
                                     )
                                     (set_local $12
                                      (i32.const 3)
                                     )
                                     (br $label$3)
                                    )
                                    (call $eosio_assert
                                     (i32.eq
                                      (i32.load offset=20
                                       (tee_local $0
                                        (i32.load
                                         (i32.add
                                          (get_local $10)
                                          (i32.const -24)
                                         )
                                        )
                                       )
                                      )
                                      (i32.add
                                       (get_local $11)
                                       (i32.const 8)
                                      )
                                     )
                                     (i32.const 160)
                                    )
                                    (br $label$12)
                                   )
                                   (set_local $0
                                    (i32.const 0)
                                   )
                                   (br_if $label$11
                                    (i32.lt_s
                                     (tee_local $4
                                      (call $db_find_i64
                                       (i64.load offset=8
                                        (get_local $11)
                                       )
                                       (i64.load
                                        (get_local $5)
                                       )
                                       (i64.const -3841130244651450368)
                                       (get_local $9)
                                      )
                                     )
                                     (i32.const 0)
                                    )
                                   )
                                   (set_local $12
                                    (i32.const 20)
                                   )
                                   (br $label$3)
                                  )
                                  (call $eosio_assert
                                   (i32.eq
                                    (i32.load offset=20
                                     (tee_local $0
                                      (call $_ZNK5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE31load_object_by_primary_iteratorEl
                                       (i32.add
                                        (get_local $11)
                                        (i32.const 8)
                                       )
                                       (get_local $4)
                                      )
                                     )
                                    )
                                    (i32.add
                                     (get_local $11)
                                     (i32.const 8)
                                    )
                                   )
                                   (i32.const 160)
                                  )
                                  (set_local $12
                                   (i32.const 4)
                                  )
                                  (br $label$3)
                                 )
                                 (call $prints
                                  (i32.const 224)
                                 )
                                 (call $printi
                                  (get_local $9)
                                 )
                                 (call $eosio_assert
                                  (i32.ne
                                   (get_local $0)
                                   (i32.const 0)
                                  )
                                  (i32.const 240)
                                 )
                                 (set_local $4
                                  (i32.load
                                   (i32.add
                                    (get_local $0)
                                    (i32.const 12)
                                   )
                                  )
                                 )
                                 (set_local $0
                                  (i32.load offset=8
                                   (get_local $0)
                                  )
                                 )
                                 (call $prints
                                  (i32.const 272)
                                 )
                                 (call $printui
                                  (i64.extend_u/i32
                                   (i32.sub
                                    (get_local $4)
                                    (get_local $0)
                                   )
                                  )
                                 )
                                 (br_if $label$10
                                  (i64.gt_u
                                   (tee_local $9
                                    (i64.add
                                     (get_local $9)
                                     (i64.const 1)
                                    )
                                   )
                                   (get_local $2)
                                  )
                                 )
                                 (set_local $12
                                  (i32.const 5)
                                 )
                                 (br $label$3)
                                )
                                (br_if $label$14
                                 (i32.eq
                                  (tee_local $10
                                   (i32.load
                                    (get_local $7)
                                   )
                                  )
                                  (tee_local $8
                                   (i32.load
                                    (get_local $6)
                                   )
                                  )
                                 )
                                )
                                (set_local $12
                                 (i32.const 6)
                                )
                                (br $label$3)
                               )
                               (set_local $0
                                (i32.add
                                 (get_local $10)
                                 (i32.const -24)
                                )
                               )
                               (set_local $3
                                (i32.sub
                                 (i32.const 0)
                                 (get_local $8)
                                )
                               )
                               (set_local $12
                                (i32.const 0)
                               )
                               (br $label$3)
                              )
                              (br_if $label$17
                               (i64.eq
                                (i64.load
                                 (i32.load
                                  (get_local $0)
                                 )
                                )
                                (get_local $9)
                               )
                              )
                              (set_local $12
                               (i32.const 1)
                              )
                              (br $label$3)
                             )
                             (set_local $10
                              (get_local $0)
                             )
                             (set_local $0
                              (tee_local $4
                               (i32.add
                                (get_local $0)
                                (i32.const -24)
                               )
                              )
                             )
                             (br_if $label$15
                              (i32.ne
                               (i32.add
                                (get_local $4)
                                (get_local $3)
                               )
                               (i32.const -24)
                              )
                             )
                             (br $label$16)
                            )
                            (br_if $label$9
                             (i32.eqz
                              (tee_local $3
                               (i32.load offset=32
                                (get_local $11)
                               )
                              )
                             )
                            )
                            (set_local $12
                             (i32.const 8)
                            )
                            (br $label$3)
                           )
                           (br_if $label$8
                            (i32.eq
                             (tee_local $0
                              (i32.load
                               (tee_local $8
                                (i32.add
                                 (get_local $11)
                                 (i32.const 36)
                                )
                               )
                              )
                             )
                             (get_local $3)
                            )
                           )
                           (set_local $12
                            (i32.const 9)
                           )
                           (br $label$3)
                          )
                          (set_local $12
                           (i32.const 10)
                          )
                          (br $label$3)
                         )
                         (set_local $4
                          (i32.load
                           (tee_local $0
                            (i32.add
                             (get_local $0)
                             (i32.const -24)
                            )
                           )
                          )
                         )
                         (i32.store
                          (get_local $0)
                          (i32.const 0)
                         )
                         (br_if $label$6
                          (i32.eqz
                           (get_local $4)
                          )
                         )
                         (set_local $12
                          (i32.const 11)
                         )
                         (br $label$3)
                        )
                        (br_if $label$5
                         (i32.eqz
                          (tee_local $10
                           (i32.load offset=8
                            (get_local $4)
                           )
                          )
                         )
                        )
                        (set_local $12
                         (i32.const 12)
                        )
                        (br $label$3)
                       )
                       (i32.store
                        (i32.add
                         (get_local $4)
                         (i32.const 12)
                        )
                        (get_local $10)
                       )
                       (call $_ZdlPv
                        (get_local $10)
                       )
                       (set_local $12
                        (i32.const 13)
                       )
                       (br $label$3)
                      )
                      (call $_ZdlPv
                       (get_local $4)
                      )
                      (set_local $12
                       (i32.const 14)
                      )
                      (br $label$3)
                     )
                     (br_if $label$7
                      (i32.ne
                       (get_local $3)
                       (get_local $0)
                      )
                     )
                     (set_local $12
                      (i32.const 15)
                     )
                     (br $label$3)
                    )
                    (set_local $0
                     (i32.load
                      (i32.add
                       (get_local $11)
                       (i32.const 32)
                      )
                     )
                    )
                    (br $label$4)
                   )
                   (set_local $0
                    (get_local $3)
                   )
                   (set_local $12
                    (i32.const 16)
                   )
                   (br $label$3)
                  )
                  (i32.store
                   (get_local $8)
                   (get_local $3)
                  )
                  (call $_ZdlPv
                   (get_local $0)
                  )
                  (set_local $12
                   (i32.const 17)
                  )
                  (br $label$3)
                 )
                 (i32.store offset=4
                  (i32.const 0)
                  (i32.add
                   (get_local $11)
                   (i32.const 48)
                  )
                 )
                 (return)
                )
                (set_local $12
                 (i32.const 2)
                )
                (br $label$3)
               )
               (set_local $12
                (i32.const 2)
               )
               (br $label$3)
              )
              (set_local $12
               (i32.const 0)
              )
              (br $label$3)
             )
             (set_local $12
              (i32.const 2)
             )
             (br $label$3)
            )
            (set_local $12
             (i32.const 19)
            )
            (br $label$3)
           )
           (set_local $12
            (i32.const 4)
           )
           (br $label$3)
          )
          (set_local $12
           (i32.const 4)
          )
          (br $label$3)
         )
         (set_local $12
          (i32.const 7)
         )
         (br $label$3)
        )
        (set_local $12
         (i32.const 17)
        )
        (br $label$3)
       )
       (set_local $12
        (i32.const 18)
       )
       (br $label$3)
      )
      (set_local $12
       (i32.const 10)
      )
      (br $label$3)
     )
     (set_local $12
      (i32.const 14)
     )
     (br $label$3)
    )
    (set_local $12
     (i32.const 13)
    )
    (br $label$3)
   )
   (set_local $12
    (i32.const 16)
   )
   (br $label$3)
  )
 )
 (func $_ZNK5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 288)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $8)
    (tee_local $7
     (i32.add
      (get_local $4)
      (get_local $6)
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.le_u
      (get_local $6)
      (i32.const 512)
     )
    )
    (call $free
     (get_local $4)
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $8)
       (i32.const 40)
      )
     )
    )
    (set_local $4
     (i32.load offset=36
      (get_local $8)
     )
    )
   )
   (i32.store offset=16
    (tee_local $6
     (call $_Znwj
      (i32.const 32)
     )
    )
    (i32.const 0)
   )
   (i64.store offset=8 align=4
    (get_local $6)
    (i64.const 0)
   )
   (i32.store offset=20
    (get_local $6)
    (get_local $0)
   )
   (call $eosio_assert
    (i32.gt_u
     (i32.sub
      (get_local $7)
      (get_local $4)
     )
     (i32.const 7)
    )
    (i32.const 320)
   )
   (drop
    (call $memcpy
     (get_local $6)
     (get_local $4)
     (i32.const 8)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
   (drop
    (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (i32.add
      (get_local $6)
      (i32.const 8)
     )
    )
   )
   (i32.store offset=24
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=24
      (get_local $6)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eqz
      (tee_local $7
       (i32.load offset=8
        (get_local $4)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $4)
      (i32.const 12)
     )
     (get_local $7)
    )
    (call $_ZdlPv
     (get_local $7)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (set_local $5
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (set_local $6
   (i64.const 0)
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (call $eosio_assert
    (i32.lt_u
     (get_local $5)
     (i32.load
      (get_local $2)
     )
    )
    (i32.const 336)
   )
   (set_local $4
    (i32.load8_u
     (tee_local $5
      (i32.load
       (get_local $3)
      )
     )
    )
   )
   (i32.store
    (get_local $3)
    (tee_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
   )
   (set_local $6
    (i64.or
     (i64.extend_u/i32
      (i32.shl
       (i32.and
        (get_local $4)
        (i32.const 127)
       )
       (tee_local $7
        (i32.and
         (get_local $7)
         (i32.const 255)
        )
       )
      )
     )
     (get_local $6)
    )
   )
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 7)
    )
   )
   (br_if $label$0
    (i32.shr_u
     (get_local $4)
     (i32.const 7)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.le_u
      (tee_local $3
       (i32.wrap/i64
        (get_local $6)
       )
      )
      (tee_local $2
       (i32.sub
        (tee_local $7
         (i32.load offset=4
          (get_local $1)
         )
        )
        (tee_local $4
         (i32.load
          (get_local $1)
         )
        )
       )
      )
     )
    )
    (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
     (get_local $1)
     (i32.sub
      (get_local $3)
      (get_local $2)
     )
    )
    (set_local $5
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 4)
      )
     )
    )
    (set_local $4
     (i32.load
      (get_local $1)
     )
    )
    (br $label$1)
   )
   (br_if $label$1
    (i32.ge_u
     (get_local $3)
     (get_local $2)
    )
   )
   (i32.store
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (tee_local $7
     (i32.add
      (get_local $4)
      (get_local $3)
     )
    )
   )
  )
  (call $eosio_assert
   (i32.ge_u
    (i32.sub
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
     (get_local $5)
    )
    (tee_local $5
     (i32.sub
      (get_local $7)
      (get_local $4)
     )
    )
   )
   (i32.const 320)
  )
  (drop
   (call $memcpy
    (get_local $4)
    (i32.load
     (tee_local $7
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (get_local $5)
   )
  )
  (i32.store
   (get_local $7)
   (i32.add
    (i32.load
     (get_local $7)
    )
    (get_local $5)
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $2
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $2
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $2)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (block $label$10
      (br_if $label$10
       (i32.eqz
        (tee_local $6
         (i32.load offset=8
          (get_local $1)
         )
        )
       )
      )
      (i32.store
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
       (get_local $6)
      )
      (call $_ZdlPv
       (get_local $6)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $2)
      (get_local $7)
     )
    )
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (get_local $2)
    )
   )
   (call $_ZdlPv
    (get_local $2)
   )
  )
 )
 (func $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.ge_u
         (i32.sub
          (tee_local $2
           (i32.load offset=8
            (get_local $0)
           )
          )
          (tee_local $6
           (i32.load offset=4
            (get_local $0)
           )
          )
         )
         (get_local $1)
        )
       )
       (br_if $label$2
        (i32.le_s
         (tee_local $4
          (i32.add
           (tee_local $3
            (i32.sub
             (get_local $6)
             (tee_local $5
              (i32.load
               (get_local $0)
              )
             )
            )
           )
           (get_local $1)
          )
         )
         (i32.const -1)
        )
       )
       (set_local $6
        (i32.const 2147483647)
       )
       (block $label$5
        (br_if $label$5
         (i32.gt_u
          (tee_local $2
           (i32.sub
            (get_local $2)
            (get_local $5)
           )
          )
          (i32.const 1073741822)
         )
        )
        (br_if $label$3
         (i32.eqz
          (tee_local $6
           (select
            (get_local $4)
            (tee_local $6
             (i32.shl
              (get_local $2)
              (i32.const 1)
             )
            )
            (i32.lt_u
             (get_local $6)
             (get_local $4)
            )
           )
          )
         )
        )
       )
       (set_local $2
        (call $_Znwj
         (get_local $6)
        )
       )
       (br $label$1)
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (loop $label$6
       (i32.store8
        (get_local $6)
        (i32.const 0)
       )
       (i32.store
        (get_local $0)
        (tee_local $6
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.const 1)
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const -1)
         )
        )
       )
       (br $label$0)
      )
     )
     (set_local $6
      (i32.const 0)
     )
     (set_local $2
      (i32.const 0)
     )
     (br $label$1)
    )
    (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
     (get_local $0)
    )
    (unreachable)
   )
   (set_local $4
    (i32.add
     (get_local $2)
     (get_local $6)
    )
   )
   (set_local $6
    (tee_local $5
     (i32.add
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (loop $label$7
    (i32.store8
     (get_local $6)
     (i32.const 0)
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br_if $label$7
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const -1)
      )
     )
    )
   )
   (set_local $5
    (i32.sub
     (get_local $5)
     (tee_local $2
      (i32.sub
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
        )
       )
       (tee_local $1
        (i32.load
         (get_local $0)
        )
       )
      )
     )
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.lt_s
      (get_local $2)
      (i32.const 1)
     )
    )
    (drop
     (call $memcpy
      (get_local $5)
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $1
     (i32.load
      (get_local $0)
     )
    )
   )
   (i32.store
    (get_local $0)
    (get_local $5)
   )
   (i32.store
    (get_local $3)
    (get_local $6)
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (get_local $4)
   )
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
   (return)
  )
 )
 (func $_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE5eraseERKS2_ (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (call $eosio_assert
   (i32.eq
    (i32.load offset=20
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 480)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 528)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (tee_local $5
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
     )
     (tee_local $3
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $2
    (i64.load
     (get_local $1)
    )
   )
   (set_local $6
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (set_local $8
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $8)
       )
      )
      (get_local $2)
     )
    )
    (set_local $7
     (get_local $8)
    )
    (set_local $8
     (tee_local $4
      (i32.add
       (get_local $8)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $6)
      )
      (i32.const -24)
     )
    )
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $7)
    (get_local $3)
   )
   (i32.const 592)
  )
  (set_local $8
   (i32.add
    (get_local $7)
    (i32.const -24)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (tee_local $4
       (i32.load
        (get_local $5)
       )
      )
     )
    )
    (set_local $3
     (i32.sub
      (i32.const 0)
      (get_local $4)
     )
    )
    (set_local $7
     (get_local $8)
    )
    (loop $label$4
     (set_local $6
      (i32.load
       (tee_local $8
        (i32.add
         (get_local $7)
         (i32.const 24)
        )
       )
      )
     )
     (i32.store
      (get_local $8)
      (i32.const 0)
     )
     (set_local $4
      (i32.load
       (get_local $7)
      )
     )
     (i32.store
      (get_local $7)
      (get_local $6)
     )
     (block $label$5
      (br_if $label$5
       (i32.eqz
        (get_local $4)
       )
      )
      (block $label$6
       (br_if $label$6
        (i32.eqz
         (tee_local $6
          (i32.load offset=8
           (get_local $4)
          )
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $4)
         (i32.const 12)
        )
        (get_local $6)
       )
       (call $_ZdlPv
        (get_local $6)
       )
      )
      (call $_ZdlPv
       (get_local $4)
      )
     )
     (i32.store
      (i32.add
       (get_local $7)
       (i32.const 16)
      )
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 40)
       )
      )
     )
     (i64.store
      (i32.add
       (get_local $7)
       (i32.const 8)
      )
      (i64.load
       (i32.add
        (get_local $7)
        (i32.const 32)
       )
      )
     )
     (set_local $7
      (get_local $8)
     )
     (br_if $label$4
      (i32.ne
       (i32.add
        (get_local $8)
        (get_local $3)
       )
       (i32.const -24)
      )
     )
    )
    (br_if $label$2
     (i32.eq
      (tee_local $7
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
      (get_local $8)
     )
    )
   )
   (loop $label$7
    (set_local $4
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$8
     (br_if $label$8
      (i32.eqz
       (get_local $4)
      )
     )
     (block $label$9
      (br_if $label$9
       (i32.eqz
        (tee_local $6
         (i32.load offset=8
          (get_local $4)
         )
        )
       )
      )
      (i32.store
       (i32.add
        (get_local $4)
        (i32.const 12)
       )
       (get_local $6)
      )
      (call $_ZdlPv
       (get_local $6)
      )
     )
     (call $_ZdlPv
      (get_local $4)
     )
    )
    (br_if $label$7
     (i32.ne
      (get_local $8)
      (get_local $7)
     )
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 28)
   )
   (get_local $8)
  )
  (call $db_remove_i64
   (i32.load offset=24
    (get_local $1)
   )
  )
 )
 (func $_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyyEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyyEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 320)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $0
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 320)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 320)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $1
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $1)
     )
    )
    (i32.const 7)
   )
   (i32.const 320)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
    (i32.load offset=4
     (get_local $1)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $1)
   (i32.add
    (i32.load offset=4
     (get_local $1)
    )
    (i32.const 8)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE6modifyIZNS1_8setentryEyyyyEUlRS2_E_EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=20
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 816)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 864)
  )
  (set_local $4
   (i64.load
    (get_local $1)
   )
  )
  (i64.store8 offset=15
   (tee_local $11
    (get_local $9)
   )
   (tee_local $10
    (i64.load
     (get_local $3)
    )
   )
  )
  (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE6assignEjRKc
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
   (i32.wrap/i64
    (get_local $10)
   )
   (i32.add
    (get_local $11)
    (i32.const 15)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $4)
    (i64.load
     (get_local $1)
    )
   )
   (i32.const 928)
  )
  (set_local $3
   (i32.sub
    (i32.add
     (tee_local $6
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
      )
     )
     (i32.const 8)
    )
    (tee_local $7
     (i32.load offset=8
      (get_local $1)
     )
    )
   )
  )
  (set_local $10
   (i64.extend_u/i32
    (i32.sub
     (get_local $6)
     (get_local $7)
    )
   )
  )
  (loop $label$0
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $10
      (i64.shr_u
       (get_local $10)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.lt_u
      (get_local $3)
      (i32.const 513)
     )
    )
    (set_local $8
     (call $malloc
      (get_local $3)
     )
    )
    (br $label$1)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $8
     (i32.sub
      (get_local $9)
      (i32.and
       (i32.add
        (get_local $3)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (get_local $3)
    (i32.const 7)
   )
   (i32.const 800)
  )
  (drop
   (call $memcpy
    (get_local $8)
    (get_local $1)
    (i32.const 8)
   )
  )
  (set_local $10
   (i64.extend_u/i32
    (i32.sub
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 12)
      )
     )
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
     )
    )
   )
  )
  (set_local $9
   (i32.add
    (get_local $8)
    (i32.const 8)
   )
  )
  (set_local $5
   (i32.add
    (get_local $8)
    (get_local $3)
   )
  )
  (loop $label$3
   (set_local $6
    (i32.wrap/i64
     (get_local $10)
    )
   )
   (i32.store8 offset=14
    (get_local $11)
    (i32.or
     (i32.shl
      (tee_local $7
       (i64.ne
        (tee_local $10
         (i64.shr_u
          (get_local $10)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $6)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (get_local $5)
      (get_local $9)
     )
     (i32.const 0)
    )
    (i32.const 800)
   )
   (drop
    (call $memcpy
     (get_local $9)
     (i32.add
      (get_local $11)
      (i32.const 14)
     )
     (i32.const 1)
    )
   )
   (set_local $9
    (i32.add
     (get_local $9)
     (i32.const 1)
    )
   )
   (br_if $label$3
    (get_local $7)
   )
  )
  (call $eosio_assert
   (i32.ge_s
    (i32.sub
     (get_local $5)
     (get_local $9)
    )
    (tee_local $7
     (i32.sub
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
      )
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 8)
        )
       )
      )
     )
    )
   )
   (i32.const 800)
  )
  (drop
   (call $memcpy
    (get_local $9)
    (get_local $6)
    (get_local $7)
   )
  )
  (call $db_update_i64
   (i32.load offset=24
    (get_local $1)
   )
   (get_local $2)
   (get_local $8)
   (get_local $3)
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $3)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $8)
   )
  )
  (block $label$5
   (br_if $label$5
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $11)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store offset=40
   (get_local $7)
   (get_local $2)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 736)
  )
  (i32.store offset=20
   (get_local $7)
   (get_local $3)
  )
  (i32.store offset=16
   (get_local $7)
   (get_local $1)
  )
  (i32.store offset=24
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 40)
   )
  )
  (i32.store offset=16
   (tee_local $3
    (call $_Znwj
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=8 align=4
   (get_local $3)
   (i64.const 0)
  )
  (i32.store offset=20
   (get_local $3)
   (get_local $1)
  )
  (call $_ZZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRS8_E_clINS3_4itemEEEDaSA_
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
   (get_local $3)
  )
  (i32.store offset=32
   (get_local $7)
   (get_local $3)
  )
  (i64.store offset=16
   (get_local $7)
   (tee_local $2
    (i64.load
     (get_local $3)
    )
   )
  )
  (i32.store offset=12
   (get_local $7)
   (tee_local $4
    (i32.load offset=24
     (get_local $3)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.load
        (tee_local $6
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $5)
     (get_local $2)
    )
    (i32.store offset=16
     (get_local $5)
     (get_local $4)
    )
    (i32.store offset=32
     (get_local $7)
     (i32.const 0)
    )
    (i32.store
     (get_local $5)
     (get_local $3)
    )
    (i32.store
     (get_local $6)
     (i32.add
      (get_local $5)
      (i32.const 24)
     )
    )
    (br $label$0)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.add
     (get_local $7)
     (i32.const 12)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $3)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $3
   (i32.load offset=32
    (get_local $7)
   )
  )
  (i32.store offset=32
   (get_local $7)
   (i32.const 0)
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (get_local $3)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (tee_local $1
       (i32.load offset=8
        (get_local $3)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $3)
      (i32.const 12)
     )
     (get_local $1)
    )
    (call $_ZdlPv
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
 )
 (func $_ZZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRS8_E_clINS3_4itemEEEDaSA_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i64.store
   (get_local $1)
   (i64.load32_s
    (tee_local $6
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (i64.store8 offset=14
   (tee_local $10
    (get_local $8)
   )
   (tee_local $9
    (i64.load offset=8
     (get_local $6)
    )
   )
  )
  (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE6assignEjRKc
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
   (i32.wrap/i64
    (get_local $9)
   )
   (i32.add
    (get_local $10)
    (i32.const 14)
   )
  )
  (set_local $6
   (i32.sub
    (i32.add
     (tee_local $4
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
      )
     )
     (i32.const 8)
    )
    (tee_local $5
     (i32.load offset=8
      (get_local $1)
     )
    )
   )
  )
  (set_local $9
   (i64.extend_u/i32
    (i32.sub
     (get_local $4)
     (get_local $5)
    )
   )
  )
  (loop $label$0
   (set_local $6
    (i32.add
     (get_local $6)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $9
      (i64.shr_u
       (get_local $9)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.lt_u
      (get_local $6)
      (i32.const 513)
     )
    )
    (set_local $7
     (call $malloc
      (get_local $6)
     )
    )
    (br $label$1)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $7
     (i32.sub
      (get_local $8)
      (i32.and
       (i32.add
        (get_local $6)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (get_local $6)
    (i32.const 7)
   )
   (i32.const 800)
  )
  (drop
   (call $memcpy
    (get_local $7)
    (get_local $1)
    (i32.const 8)
   )
  )
  (set_local $9
   (i64.extend_u/i32
    (i32.sub
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 12)
      )
     )
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $7)
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.add
    (get_local $7)
    (get_local $6)
   )
  )
  (loop $label$3
   (set_local $4
    (i32.wrap/i64
     (get_local $9)
    )
   )
   (i32.store8 offset=15
    (get_local $10)
    (i32.or
     (i32.shl
      (tee_local $5
       (i64.ne
        (tee_local $9
         (i64.shr_u
          (get_local $9)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $4)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (get_local $3)
      (get_local $8)
     )
     (i32.const 0)
    )
    (i32.const 800)
   )
   (drop
    (call $memcpy
     (get_local $8)
     (i32.add
      (get_local $10)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (set_local $8
    (i32.add
     (get_local $8)
     (i32.const 1)
    )
   )
   (br_if $label$3
    (get_local $5)
   )
  )
  (call $eosio_assert
   (i32.ge_s
    (i32.sub
     (get_local $3)
     (get_local $8)
    )
    (tee_local $5
     (i32.sub
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
      )
      (tee_local $4
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 8)
        )
       )
      )
     )
    )
   )
   (i32.const 800)
  )
  (drop
   (call $memcpy
    (get_local $8)
    (get_local $4)
    (get_local $5)
   )
  )
  (i32.store offset=24
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const -3841130244651450368)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $9
     (i64.load
      (get_local $1)
     )
    )
    (get_local $7)
    (get_local $6)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $6)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $7)
   )
  )
  (block $label$5
   (br_if $label$5
    (i64.lt_u
     (get_local $9)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $9)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $9)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
  )
 )
 (func $_ZNSt3__16vectorIcNS_9allocatorIcEEE6assignEjRKc (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.ge_u
        (i32.sub
         (tee_local $3
          (i32.load offset=8
           (get_local $0)
          )
         )
         (tee_local $5
          (i32.load
           (get_local $0)
          )
         )
        )
        (get_local $1)
       )
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $5)
        )
       )
       (i32.store offset=4
        (get_local $0)
        (get_local $5)
       )
       (call $_ZdlPv
        (get_local $5)
       )
       (set_local $3
        (i32.const 0)
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (i32.const 0)
       )
       (i64.store align=4
        (get_local $0)
        (i64.const 0)
       )
      )
      (br_if $label$0
       (i32.le_s
        (get_local $1)
        (i32.const -1)
       )
      )
      (set_local $4
       (i32.const 2147483647)
      )
      (block $label$5
       (br_if $label$5
        (i32.gt_u
         (get_local $3)
         (i32.const 1073741822)
        )
       )
       (set_local $4
        (select
         (get_local $1)
         (tee_local $5
          (i32.shl
           (get_local $3)
           (i32.const 1)
          )
         )
         (i32.lt_u
          (get_local $5)
          (get_local $1)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (tee_local $5
        (call $_Znwj
         (get_local $4)
        )
       )
      )
      (i32.store offset=4
       (get_local $0)
       (get_local $5)
      )
      (i32.store
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
       (i32.add
        (get_local $5)
        (get_local $4)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (loop $label$6
       (i32.store8
        (get_local $5)
        (i32.load8_u
         (get_local $2)
        )
       )
       (i32.store
        (get_local $0)
        (tee_local $5
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.const 1)
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const -1)
         )
        )
       )
       (br $label$2)
      )
     )
     (block $label$7
      (br_if $label$7
       (i32.eqz
        (tee_local $4
         (select
          (tee_local $3
           (i32.sub
            (i32.load offset=4
             (get_local $0)
            )
            (get_local $5)
           )
          )
          (get_local $1)
          (i32.lt_u
           (get_local $3)
           (get_local $1)
          )
         )
        )
       )
      )
      (drop
       (call $memset
        (get_local $5)
        (i32.load8_u
         (get_local $2)
        )
        (get_local $4)
       )
      )
     )
     (br_if $label$1
      (i32.ge_u
       (get_local $3)
       (get_local $1)
      )
     )
     (set_local $1
      (i32.sub
       (get_local $3)
       (get_local $1)
      )
     )
     (set_local $0
      (i32.load
       (tee_local $5
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
     )
     (loop $label$8
      (i32.store8
       (get_local $0)
       (i32.load8_u
        (get_local $2)
       )
      )
      (i32.store
       (get_local $5)
       (tee_local $0
        (i32.add
         (i32.load
          (get_local $5)
         )
         (i32.const 1)
        )
       )
      )
      (br_if $label$8
       (tee_local $1
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
      )
     )
    )
    (return)
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (i32.add
     (i32.load
      (get_local $0)
     )
     (get_local $1)
    )
   )
   (return)
  )
  (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
   (get_local $0)
  )
  (unreachable)
 )
 (func $_Znwj (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$0
   (br_if $label$0
    (tee_local $0
     (call $malloc
      (tee_local $1
       (select
        (get_local $0)
        (i32.const 1)
        (get_local $0)
       )
      )
     )
    )
   )
   (loop $label$1
    (set_local $0
     (i32.const 0)
    )
    (br_if $label$0
     (i32.eqz
      (tee_local $2
       (i32.load offset=988
        (i32.const 0)
       )
      )
     )
    )
    (call_indirect (type $FUNCSIG$v)
     (get_local $2)
    )
    (br_if $label$1
     (i32.eqz
      (tee_local $0
       (call $malloc
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $_ZdlPv (param $0 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $0)
    )
   )
   (call $free
    (get_local $0)
   )
  )
 )
 (func $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv (param $0 i32)
  (call $abort)
  (unreachable)
 )
 (func $memcmp (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $2)
    )
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.ne
       (tee_local $3
        (i32.load8_u
         (get_local $0)
        )
       )
       (tee_local $4
        (i32.load8_u
         (get_local $1)
        )
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br_if $label$2
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const -1)
       )
      )
     )
     (br $label$0)
    )
   )
   (set_local $5
    (i32.sub
     (get_local $3)
     (get_local $4)
    )
   )
  )
  (get_local $5)
 )
 (func $malloc (param $0 i32) (result i32)
  (call $_ZN5eosio14memory_manager6mallocEm
   (i32.const 992)
   (get_local $0)
  )
 )
 (func $_ZN5eosio14memory_manager6mallocEm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (block $label$1
    (br_if $label$1
     (tee_local $13
      (i32.load offset=8384
       (get_local $0)
      )
     )
    )
    (set_local $13
     (i32.const 16)
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 8384)
     )
     (i32.const 16)
    )
   )
   (set_local $2
    (select
     (i32.sub
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (tee_local $2
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
        (i32.const 7)
       )
      )
     )
     (get_local $1)
     (get_local $2)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.ge_u
        (tee_local $10
         (i32.load offset=8388
          (get_local $0)
         )
        )
        (get_local $13)
       )
      )
      (set_local $1
       (i32.add
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $10)
          (i32.const 12)
         )
        )
        (i32.const 8192)
       )
      )
      (block $label$5
       (br_if $label$5
        (get_local $10)
       )
       (br_if $label$5
        (i32.load
         (tee_local $13
          (i32.add
           (get_local $0)
           (i32.const 8196)
          )
         )
        )
       )
       (i32.store
        (get_local $1)
        (i32.const 8192)
       )
       (i32.store
        (get_local $13)
        (get_local $0)
       )
      )
      (set_local $10
       (i32.add
        (get_local $2)
        (i32.const 4)
       )
      )
      (loop $label$6
       (block $label$7
        (br_if $label$7
         (i32.gt_u
          (i32.add
           (tee_local $13
            (i32.load offset=8
             (get_local $1)
            )
           )
           (get_local $10)
          )
          (i32.load
           (get_local $1)
          )
         )
        )
        (i32.store
         (tee_local $13
          (i32.add
           (i32.load offset=4
            (get_local $1)
           )
           (get_local $13)
          )
         )
         (i32.or
          (i32.and
           (i32.load
            (get_local $13)
           )
           (i32.const -2147483648)
          )
          (get_local $2)
         )
        )
        (i32.store
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
         (i32.add
          (i32.load
           (get_local $1)
          )
          (get_local $10)
         )
        )
        (i32.store
         (get_local $13)
         (i32.or
          (i32.load
           (get_local $13)
          )
          (i32.const -2147483648)
         )
        )
        (br_if $label$3
         (tee_local $1
          (i32.add
           (get_local $13)
           (i32.const 4)
          )
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (call $_ZN5eosio14memory_manager16next_active_heapEv
          (get_local $0)
         )
        )
       )
      )
     )
     (set_local $4
      (i32.sub
       (i32.const 2147483644)
       (get_local $2)
      )
     )
     (set_local $11
      (i32.add
       (get_local $0)
       (i32.const 8392)
      )
     )
     (set_local $12
      (i32.add
       (get_local $0)
       (i32.const 8384)
      )
     )
     (set_local $13
      (tee_local $3
       (i32.load offset=8392
        (get_local $0)
       )
      )
     )
     (loop $label$8
      (call $eosio_assert
       (i32.eq
        (i32.load
         (i32.add
          (tee_local $1
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $13)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $1)
           (i32.const 8192)
          )
         )
        )
       )
       (i32.const 9392)
      )
      (set_local $13
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (get_local $1)
           (i32.const 8196)
          )
         )
        )
        (i32.const 4)
       )
      )
      (loop $label$9
       (set_local $7
        (i32.add
         (get_local $6)
         (i32.load
          (get_local $5)
         )
        )
       )
       (set_local $1
        (i32.and
         (tee_local $9
          (i32.load
           (tee_local $8
            (i32.add
             (get_local $13)
             (i32.const -4)
            )
           )
          )
         )
         (i32.const 2147483647)
        )
       )
       (block $label$10
        (br_if $label$10
         (i32.lt_s
          (get_local $9)
          (i32.const 0)
         )
        )
        (block $label$11
         (br_if $label$11
          (i32.ge_u
           (get_local $1)
           (get_local $2)
          )
         )
         (loop $label$12
          (br_if $label$11
           (i32.ge_u
            (tee_local $10
             (i32.add
              (get_local $13)
              (get_local $1)
             )
            )
            (get_local $7)
           )
          )
          (br_if $label$11
           (i32.lt_s
            (tee_local $10
             (i32.load
              (get_local $10)
             )
            )
            (i32.const 0)
           )
          )
          (br_if $label$12
           (i32.lt_u
            (tee_local $1
             (i32.add
              (i32.add
               (get_local $1)
               (i32.and
                (get_local $10)
                (i32.const 2147483647)
               )
              )
              (i32.const 4)
             )
            )
            (get_local $2)
           )
          )
         )
        )
        (i32.store
         (get_local $8)
         (i32.or
          (select
           (get_local $1)
           (get_local $2)
           (i32.lt_u
            (get_local $1)
            (get_local $2)
           )
          )
          (i32.and
           (get_local $9)
           (i32.const -2147483648)
          )
         )
        )
        (block $label$13
         (br_if $label$13
          (i32.le_u
           (get_local $1)
           (get_local $2)
          )
         )
         (i32.store
          (i32.add
           (get_local $13)
           (get_local $2)
          )
          (i32.and
           (i32.add
            (get_local $4)
            (get_local $1)
           )
           (i32.const 2147483647)
          )
         )
        )
        (br_if $label$2
         (i32.ge_u
          (get_local $1)
          (get_local $2)
         )
        )
       )
       (br_if $label$9
        (i32.lt_u
         (tee_local $13
          (i32.add
           (i32.add
            (get_local $13)
            (get_local $1)
           )
           (i32.const 4)
          )
         )
         (get_local $7)
        )
       )
      )
      (set_local $1
       (i32.const 0)
      )
      (i32.store
       (get_local $11)
       (tee_local $13
        (select
         (i32.const 0)
         (tee_local $13
          (i32.add
           (i32.load
            (get_local $11)
           )
           (i32.const 1)
          )
         )
         (i32.eq
          (get_local $13)
          (i32.load
           (get_local $12)
          )
         )
        )
       )
      )
      (br_if $label$8
       (i32.ne
        (get_local $13)
        (get_local $3)
       )
      )
     )
    )
    (return
     (get_local $1)
    )
   )
   (i32.store
    (get_local $8)
    (i32.or
     (i32.load
      (get_local $8)
     )
     (i32.const -2147483648)
    )
   )
   (return
    (get_local $13)
   )
  )
  (i32.const 0)
 )
 (func $_ZN5eosio14memory_manager16next_active_heapEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $1
   (i32.load offset=8388
    (get_local $0)
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.load8_u offset=9478
       (i32.const 0)
      )
     )
    )
    (set_local $7
     (i32.load offset=9480
      (i32.const 0)
     )
    )
    (br $label$0)
   )
   (set_local $7
    (current_memory)
   )
   (i32.store8 offset=9478
    (i32.const 0)
    (i32.const 1)
   )
   (i32.store offset=9480
    (i32.const 0)
    (tee_local $7
     (i32.shl
      (get_local $7)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $3
   (get_local $7)
  )
  (block $label$2
   (block $label$3
    (block $label$4
     (block $label$5
      (br_if $label$5
       (i32.le_u
        (tee_local $2
         (i32.shr_u
          (i32.add
           (get_local $7)
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $8
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $2)
         (get_local $8)
        )
       )
      )
      (set_local $8
       (i32.const 0)
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (current_memory)
       )
      )
      (set_local $3
       (i32.load offset=9480
        (i32.const 0)
       )
      )
     )
     (set_local $8
      (i32.const 0)
     )
     (i32.store offset=9480
      (i32.const 0)
      (get_local $3)
     )
     (br_if $label$4
      (i32.lt_s
       (get_local $7)
       (i32.const 0)
      )
     )
     (set_local $2
      (i32.add
       (get_local $0)
       (i32.mul
        (get_local $1)
        (i32.const 12)
       )
      )
     )
     (set_local $7
      (i32.sub
       (i32.sub
        (i32.add
         (get_local $7)
         (select
          (i32.const 65536)
          (i32.const 131072)
          (tee_local $6
           (i32.lt_u
            (tee_local $8
             (i32.and
              (get_local $7)
              (i32.const 65535)
             )
            )
            (i32.const 64513)
           )
          )
         )
        )
        (select
         (get_local $8)
         (i32.and
          (get_local $7)
          (i32.const 131071)
         )
         (get_local $6)
        )
       )
       (get_local $7)
      )
     )
     (block $label$6
      (br_if $label$6
       (i32.load8_u offset=9478
        (i32.const 0)
       )
      )
      (set_local $3
       (current_memory)
      )
      (i32.store8 offset=9478
       (i32.const 0)
       (i32.const 1)
      )
      (i32.store offset=9480
       (i32.const 0)
       (tee_local $3
        (i32.shl
         (get_local $3)
         (i32.const 16)
        )
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 8192)
      )
     )
     (br_if $label$3
      (i32.lt_s
       (get_local $7)
       (i32.const 0)
      )
     )
     (set_local $6
      (get_local $3)
     )
     (block $label$7
      (br_if $label$7
       (i32.le_u
        (tee_local $8
         (i32.shr_u
          (i32.add
           (i32.add
            (tee_local $5
             (i32.and
              (i32.add
               (get_local $7)
               (i32.const 7)
              )
              (i32.const -8)
             )
            )
            (get_local $3)
           )
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $4
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $8)
         (get_local $4)
        )
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $8)
        (current_memory)
       )
      )
      (set_local $6
       (i32.load offset=9480
        (i32.const 0)
       )
      )
     )
     (i32.store offset=9480
      (i32.const 0)
      (i32.add
       (get_local $6)
       (get_local $5)
      )
     )
     (br_if $label$3
      (i32.eq
       (get_local $3)
       (i32.const -1)
      )
     )
     (br_if $label$2
      (i32.eq
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (tee_local $1
            (i32.add
             (get_local $0)
             (i32.mul
              (get_local $1)
              (i32.const 12)
             )
            )
           )
           (i32.const 8196)
          )
         )
        )
        (tee_local $8
         (i32.load
          (get_local $2)
         )
        )
       )
       (get_local $3)
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.eq
        (get_local $8)
        (tee_local $1
         (i32.load
          (tee_local $5
           (i32.add
            (get_local $1)
            (i32.const 8200)
           )
          )
         )
        )
       )
      )
      (i32.store
       (tee_local $6
        (i32.add
         (get_local $6)
         (get_local $1)
        )
       )
       (i32.or
        (i32.and
         (i32.load
          (get_local $6)
         )
         (i32.const -2147483648)
        )
        (i32.add
         (i32.sub
          (i32.const -4)
          (get_local $1)
         )
         (get_local $8)
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.load
        (get_local $2)
       )
      )
      (i32.store
       (get_local $6)
       (i32.and
        (i32.load
         (get_local $6)
        )
        (i32.const 2147483647)
       )
      )
     )
     (i32.store
      (tee_local $2
       (i32.add
        (get_local $0)
        (i32.const 8388)
       )
      )
      (tee_local $2
       (i32.add
        (i32.load
         (get_local $2)
        )
        (i32.const 1)
       )
      )
     )
     (i32.store
      (i32.add
       (tee_local $0
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $2)
          (i32.const 12)
         )
        )
       )
       (i32.const 8196)
      )
      (get_local $3)
     )
     (i32.store
      (tee_local $8
       (i32.add
        (get_local $0)
        (i32.const 8192)
       )
      )
      (get_local $7)
     )
    )
    (return
     (get_local $8)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eq
      (tee_local $8
       (i32.load
        (get_local $2)
       )
      )
      (tee_local $7
       (i32.load
        (tee_local $1
         (i32.add
          (tee_local $3
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $1)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
       )
      )
     )
    )
    (i32.store
     (tee_local $3
      (i32.add
       (i32.load
        (i32.add
         (get_local $3)
         (i32.const 8196)
        )
       )
       (get_local $7)
      )
     )
     (i32.or
      (i32.and
       (i32.load
        (get_local $3)
       )
       (i32.const -2147483648)
      )
      (i32.add
       (i32.sub
        (i32.const -4)
        (get_local $7)
       )
       (get_local $8)
      )
     )
    )
    (i32.store
     (get_local $1)
     (i32.load
      (get_local $2)
     )
    )
    (i32.store
     (get_local $3)
     (i32.and
      (i32.load
       (get_local $3)
      )
      (i32.const 2147483647)
     )
    )
   )
   (i32.store offset=8384
    (get_local $0)
    (tee_local $3
     (i32.add
      (i32.load
       (tee_local $7
        (i32.add
         (get_local $0)
         (i32.const 8388)
        )
       )
      )
      (i32.const 1)
     )
    )
   )
   (i32.store
    (get_local $7)
    (get_local $3)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store
   (get_local $2)
   (i32.add
    (get_local $8)
    (get_local $7)
   )
  )
  (get_local $2)
 )
 (func $free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (get_local $0)
     )
    )
    (br_if $label$1
     (i32.lt_s
      (tee_local $2
       (i32.load offset=9376
        (i32.const 0)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $3
     (i32.const 9184)
    )
    (set_local $1
     (i32.add
      (i32.mul
       (get_local $2)
       (i32.const 12)
      )
      (i32.const 9184)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i32.eqz
       (tee_local $2
        (i32.load
         (i32.add
          (get_local $3)
          (i32.const 4)
         )
        )
       )
      )
     )
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (i32.add
         (get_local $2)
         (i32.const 4)
        )
        (get_local $0)
       )
      )
      (br_if $label$0
       (i32.gt_u
        (i32.add
         (get_local $2)
         (i32.load
          (get_local $3)
         )
        )
        (get_local $0)
       )
      )
     )
     (br_if $label$2
      (i32.lt_u
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 12)
        )
       )
       (get_local $1)
      )
     )
    )
   )
   (return)
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const -4)
    )
   )
   (i32.and
    (i32.load
     (get_local $3)
    )
    (i32.const 2147483647)
   )
  )
 )
 (func $__wasm_nullptr (type $FUNCSIG$v)
  (unreachable)
 )
)
