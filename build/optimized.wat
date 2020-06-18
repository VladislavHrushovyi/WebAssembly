(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f64_=>_none (func (param i32 i32 f64)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (type $f64_i32_=>_f64 (func (param f64 i32) (result f64)))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1072) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1136) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 1184) "\03\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 ")
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1184))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/tlsf/__alloc))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__collect" (func $~lib/rt/pure/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "InvertColors" (func $assembly/index/InvertColors))
 (export "Sepia" (func $assembly/index/Sepia))
 (export "Visible" (func $assembly/index/Visible))
 (export "Rotate" (func $assembly/index/Rotate))
 (export "Contrast" (func $assembly/index/Contrast))
 (export "Zoom" (func $assembly/index/Zoom))
 (export "Temperature" (func $assembly/index/Temperature))
 (export "Resize" (func $assembly/index/Resize))
 (export "BalanceColor" (func $assembly/index/BalanceColor))
 (export "ZoomTest" (func $assembly/index/ZoomTest))
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 277
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 279
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $4
   i32.const 7
   i32.sub
   local.set $4
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $4
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 292
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=20
  local.set $3
  local.get $1
  i32.load offset=16
  local.tee $5
  if
   local.get $5
   local.get $3
   i32.store offset=20
  end
  local.get $3
  if
   local.get $3
   local.get $5
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.get $2
  local.get $4
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.get $2
   local.get $4
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $3
   i32.store offset=96
   local.get $3
   i32.eqz
   if
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.tee $3
    i32.load offset=4
    i32.const 1
    local.get $2
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.set $1
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 205
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 207
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $5
  i32.const 1
  i32.and
  if
   local.get $3
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    local.get $3
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $1
    i32.const 16
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $4
    i32.load
    local.set $5
   end
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $2
   i32.load
   local.tee $7
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1040
    i32.const 228
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $8
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/removeBlock
    local.get $2
    local.get $8
    local.get $7
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $2
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 243
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.const 16
  i32.add
  i32.add
  local.get $4
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 244
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
   local.set $6
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $6
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 260
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $3
  i32.store offset=20
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.get $2
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $6
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  local.get $2
  i32.le_u
  select
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 386
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $1
   local.get $3
   i32.const 16
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1040
    i32.const 396
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1040
    i32.const 408
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.tee $2
  i32.const 48
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 32
  i32.sub
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/maybeInitialize (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.tee $0
  i32.eqz
  if
   i32.const 1
   memory.size
   local.tee $0
   i32.gt_s
   if (result i32)
    i32.const 1
    local.get $0
    i32.sub
    memory.grow
    i32.const 0
    i32.lt_s
   else
    i32.const 0
   end
   if
    unreachable
   end
   i32.const 1216
   local.tee $0
   i32.const 0
   i32.store
   i32.const 2784
   i32.const 0
   i32.store
   loop $for-loop|0
    local.get $1
    i32.const 23
    i32.lt_u
    if
     local.get $1
     i32.const 2
     i32.shl
     i32.const 1216
     i32.add
     i32.const 0
     i32.store offset=4
     i32.const 0
     local.set $2
     loop $for-loop|1
      local.get $2
      i32.const 16
      i32.lt_u
      if
       local.get $1
       i32.const 4
       i32.shl
       local.get $2
       i32.add
       i32.const 2
       i32.shl
       i32.const 1216
       i32.add
       i32.const 0
       i32.store offset=96
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   i32.const 1216
   i32.const 2800
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 1216
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870904
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 338
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1040
     i32.const 351
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1040
   i32.const 365
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   local.get $1
   i32.const 16
   i32.add
   i32.add
   local.tee $1
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.tee $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/tlsf/collectLock
  if
   i32.const 0
   i32.const 1040
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 1088
   i32.const 1040
   i32.const 461
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $3
  i32.const 16
  local.get $3
  i32.const 16
  i32.gt_u
  select
  local.tee $4
  call $~lib/rt/tlsf/searchBlock
  local.tee $3
  i32.eqz
  if
   i32.const 1
   global.set $~lib/rt/tlsf/collectLock
   i32.const 0
   global.set $~lib/rt/tlsf/collectLock
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/searchBlock
   local.tee $3
   i32.eqz
   if
    i32.const 16
    memory.size
    local.tee $3
    i32.const 16
    i32.shl
    i32.const 16
    i32.sub
    local.get $0
    i32.load offset=1568
    i32.ne
    i32.shl
    local.get $4
    i32.const 1
    i32.const 27
    local.get $4
    i32.clz
    i32.sub
    i32.shl
    i32.const 1
    i32.sub
    i32.add
    local.get $4
    local.get $4
    i32.const 536870904
    i32.lt_u
    select
    i32.add
    i32.const 65535
    i32.add
    i32.const -65536
    i32.and
    i32.const 16
    i32.shr_u
    local.set $5
    local.get $3
    local.get $5
    local.get $3
    local.get $5
    i32.gt_s
    select
    memory.grow
    i32.const 0
    i32.lt_s
    if
     local.get $5
     memory.grow
     i32.const 0
     i32.lt_s
     if
      unreachable
     end
    end
    local.get $0
    local.get $3
    i32.const 16
    i32.shl
    memory.size
    i32.const 16
    i32.shl
    call $~lib/rt/tlsf/addMemory
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/searchBlock
    local.tee $3
    i32.eqz
    if
     i32.const 0
     i32.const 1040
     i32.const 513
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  local.get $3
  i32.load
  i32.const -4
  i32.and
  local.get $4
  i32.lt_u
  if
   i32.const 0
   i32.const 1040
   i32.const 521
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $2
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $4
  call $~lib/rt/tlsf/prepareBlock
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/__retain (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1212
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   i32.load offset=4
   local.tee $2
   i32.const -268435456
   i32.and
   local.get $2
   i32.const 1
   i32.add
   i32.const -268435456
   i32.and
   i32.ne
   if
    i32.const 0
    i32.const 1152
    i32.const 109
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $1
   i32.load
   i32.const 1
   i32.and
   if
    i32.const 0
    i32.const 1152
    i32.const 112
    i32.const 14
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (param $0 i32)
  local.get $0
  i32.const 1212
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $assembly/index/InvertColors (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.mul
  i32.const 2
  i32.shl
  local.set $2
  i32.const 1
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $2
   i32.const 1
   i32.add
   i32.lt_s
   if
    local.get $0
    i32.const 1
    i32.sub
    i32.load8_u
    local.set $1
    local.get $0
    local.get $2
    i32.add
    i32.const 1
    i32.sub
    local.get $0
    i32.const 4
    i32.rem_s
    if (result i32)
     i32.const 255
     local.get $1
     i32.sub
    else
     local.get $1
    end
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $assembly/index/Sepia (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.mul
  i32.const 2
  i32.shl
  local.set $1
  loop $for-loop|0
   local.get $2
   local.get $1
   i32.lt_s
   if
    local.get $2
    i32.load8_u offset=3
    local.set $4
    local.get $1
    local.get $2
    i32.add
    local.tee $0
    local.get $2
    i32.load8_u
    f64.convert_i32_u
    f64.const 0.2126
    f64.mul
    local.get $2
    i32.load8_u offset=1
    f64.convert_i32_u
    f64.const 0.7152
    f64.mul
    f64.add
    local.get $2
    i32.load8_u offset=2
    f64.convert_i32_u
    f64.const 0.0722
    f64.mul
    f64.add
    local.tee $3
    i32.trunc_f64_u
    i32.store8
    local.get $0
    local.get $3
    i32.trunc_f64_u
    i32.store8 offset=1
    local.get $0
    local.get $3
    i32.trunc_f64_u
    i32.store8 offset=2
    local.get $0
    local.get $4
    i32.store8 offset=3
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $assembly/index/Visible (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.mul
  i32.const 2
  i32.shl
  local.set $0
  loop $for-loop|0
   local.get $3
   local.get $0
   i32.lt_s
   if
    local.get $0
    local.get $3
    i32.add
    local.get $3
    i32.load8_u offset=3
    local.get $2
    i32.sub
    i32.store8 offset=3
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
 )
 (func $assembly/index/Rotate (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  i32.const 1
  local.set $9
  i32.const 1
  local.set $4
  local.get $1
  local.set $5
  i32.const 1
  local.set $10
  local.get $0
  local.tee $3
  local.set $6
  local.get $2
  i32.const 90
  i32.eq
  if
   local.get $1
   i32.const 1
   i32.sub
   local.set $7
   local.get $1
   local.set $3
   i32.const -1
   local.set $9
   local.get $6
   local.tee $4
   local.set $5
   i32.const 1
   local.set $6
  else
   local.get $2
   i32.const 180
   i32.eq
   if
    local.get $6
    i32.const 1
    i32.sub
    local.set $7
    i32.const -1
    local.set $9
    local.get $1
    i32.const 1
    i32.sub
    local.set $8
    i32.const -1
    local.set $10
   else
    local.get $2
    i32.const 270
    i32.eq
    if
     local.get $6
     local.tee $4
     i32.const 1
     i32.sub
     local.set $8
     i32.const -1
     local.set $10
     i32.const 1
     local.set $6
     local.get $4
     local.set $5
     local.get $1
     local.set $3
    end
   end
  end
  local.get $0
  local.get $1
  i32.mul
  i32.const 2
  i32.shl
  local.set $1
  loop $for-loop|0
   local.get $8
   local.get $5
   i32.lt_s
   i32.const 0
   local.get $8
   i32.const 0
   i32.ge_s
   select
   if
    local.get $7
    local.set $0
    loop $for-loop|1
     local.get $0
     local.get $3
     i32.lt_s
     i32.const 0
     local.get $0
     i32.const 0
     i32.ge_s
     select
     if
      local.get $11
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      local.get $0
      local.get $4
      i32.mul
      local.get $6
      local.get $8
      i32.mul
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.store
      local.get $11
      i32.const 1
      i32.add
      local.set $11
      local.get $0
      local.get $9
      i32.add
      local.set $0
      br $for-loop|1
     end
    end
    local.get $8
    local.get $10
    i32.add
    local.set $8
    br $for-loop|0
   end
  end
 )
 (func $assembly/index/Contrast (param $0 i32) (param $1 i32) (param $2 f64)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  local.get $0
  local.get $1
  i32.mul
  i32.const 2
  i32.shl
  local.set $0
  loop $for-loop|0
   local.get $3
   local.get $0
   i32.lt_s
   if
    local.get $3
    i32.load8_u offset=1
    f64.convert_i32_u
    f64.const 255
    f64.div
    f64.const 0.5
    f64.sub
    local.get $2
    f64.mul
    f64.const 0.5
    f64.add
    f64.const 255
    f64.mul
    local.set $4
    local.get $3
    i32.load8_u offset=2
    f64.convert_i32_u
    f64.const 255
    f64.div
    f64.const 0.5
    f64.sub
    local.get $2
    f64.mul
    f64.const 0.5
    f64.add
    f64.const 255
    f64.mul
    local.set $5
    local.get $0
    local.get $3
    i32.add
    local.tee $1
    local.get $3
    i32.load8_u
    f64.convert_i32_u
    f64.const 255
    f64.div
    f64.const 0.5
    f64.sub
    local.get $2
    f64.mul
    f64.const 0.5
    f64.add
    f64.const 255
    f64.mul
    local.tee $6
    f64.const 255
    f64.gt
    if (result f64)
     f64.const 255
    else
     f64.const 0
     local.get $6
     local.get $6
     f64.const 0
     f64.lt
     select
    end
    i32.trunc_f64_u
    i32.store8
    local.get $1
    f64.const 255
    f64.const 0
    local.get $4
    local.get $4
    f64.const 0
    f64.lt
    select
    local.get $4
    f64.const 255
    f64.gt
    select
    i32.trunc_f64_u
    i32.store8 offset=1
    local.get $1
    f64.const 255
    f64.const 0
    local.get $5
    local.get $5
    f64.const 0
    f64.lt
    select
    local.get $5
    f64.const 255
    f64.gt
    select
    i32.trunc_f64_u
    i32.store8 offset=2
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
 )
 (func $assembly/index/Zoom (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  i32.mul
  i32.const 2
  i32.shl
  local.set $5
  loop $for-loop|0
   local.get $3
   local.get $1
   i32.lt_s
   i32.const 0
   local.get $3
   i32.const 0
   i32.ge_s
   select
   if
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $0
     i32.lt_s
     i32.const 0
     local.get $2
     i32.const 0
     i32.ge_s
     select
     if
      local.get $4
      i32.const 2
      i32.shl
      local.get $5
      i32.add
      local.get $2
      local.get $0
      local.get $3
      i32.mul
      i32.add
      local.tee $6
      i32.const 2
      i32.shl
      i32.load
      i32.store
      local.get $4
      i32.const 1
      i32.add
      local.tee $4
      i32.const 2
      i32.shl
      local.get $5
      i32.add
      local.get $6
      i32.const 2
      i32.shl
      i32.load
      i32.store
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
 )
 (func $~lib/math/NativeMath.scalbn (param $0 f64) (param $1 i32) (result f64)
  local.get $1
  i32.const 1023
  i32.gt_s
  if (result f64)
   local.get $0
   f64.const 8988465674311579538646525e283
   f64.mul
   local.set $0
   local.get $1
   i32.const 1023
   i32.sub
   local.tee $1
   i32.const 1023
   i32.gt_s
   if (result f64)
    local.get $1
    i32.const 1023
    i32.sub
    local.tee $1
    i32.const 1023
    local.get $1
    i32.const 1023
    i32.lt_s
    select
    local.set $1
    local.get $0
    f64.const 8988465674311579538646525e283
    f64.mul
   else
    local.get $0
   end
  else
   local.get $1
   i32.const -1022
   i32.lt_s
   if (result f64)
    local.get $0
    f64.const 2.004168360008973e-292
    f64.mul
    local.set $0
    local.get $1
    i32.const 969
    i32.add
    local.tee $1
    i32.const -1022
    i32.lt_s
    if (result f64)
     local.get $1
     i32.const 969
     i32.add
     local.tee $1
     i32.const -1022
     local.get $1
     i32.const -1022
     i32.gt_s
     select
     local.set $1
     local.get $0
     f64.const 2.004168360008973e-292
     f64.mul
    else
     local.get $0
    end
   else
    local.get $0
   end
  end
  local.get $1
  i64.extend_i32_s
  i64.const 1023
  i64.add
  i64.const 52
  i64.shl
  f64.reinterpret_i64
  f64.mul
 )
 (func $~lib/math/NativeMath.pow (param $0 f64) (param $1 f64) (result f64)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f64)
  (local $11 i32)
  (local $12 f64)
  (local $13 i64)
  (local $14 f64)
  (local $15 i32)
  (local $16 i32)
  (local $17 f64)
  (local $18 i32)
  (local $19 i32)
  (local $20 f64)
  local.get $1
  f64.abs
  f64.const 2
  f64.le
  if
   local.get $1
   f64.const 2
   f64.eq
   if
    local.get $0
    local.get $0
    f64.mul
    return
   end
   local.get $1
   f64.const 0.5
   f64.eq
   if
    local.get $0
    f64.sqrt
    f64.abs
    f64.const inf
    local.get $0
    f64.const -inf
    f64.ne
    select
    return
   end
   local.get $1
   f64.const -1
   f64.eq
   if
    f64.const 1
    local.get $0
    f64.div
    return
   end
   local.get $1
   f64.const 1
   f64.eq
   if
    local.get $0
    return
   end
   local.get $1
   f64.const 0
   f64.eq
   if
    f64.const 1
    return
   end
  end
  local.get $0
  i64.reinterpret_f64
  local.tee $13
  i32.wrap_i64
  local.set $18
  local.get $13
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $15
  i32.const 2147483647
  i32.and
  local.set $4
  local.get $1
  i64.reinterpret_f64
  local.tee $13
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $7
  i32.const 2147483647
  i32.and
  local.tee $8
  local.get $13
  i32.wrap_i64
  local.tee $19
  i32.or
  i32.eqz
  if
   f64.const 1
   return
  end
  i32.const 1
  local.get $19
  i32.const 0
  local.get $8
  i32.const 2146435072
  i32.eq
  select
  i32.const 1
  local.get $8
  i32.const 2146435072
  i32.gt_s
  i32.const 1
  local.get $18
  i32.const 0
  local.get $4
  i32.const 2146435072
  i32.eq
  select
  local.get $4
  i32.const 2146435072
  i32.gt_s
  select
  select
  select
  if
   local.get $0
   local.get $1
   f64.add
   return
  end
  local.get $15
  i32.const 0
  i32.lt_s
  if
   local.get $8
   i32.const 1128267776
   i32.ge_s
   if (result i32)
    i32.const 2
   else
    local.get $8
    i32.const 1072693248
    i32.ge_s
    if (result i32)
     i32.const 52
     i32.const 20
     local.get $8
     i32.const 20
     i32.shr_s
     i32.const 1023
     i32.sub
     local.tee $9
     i32.const 20
     i32.gt_s
     local.tee $5
     select
     local.get $9
     i32.sub
     local.set $11
     i32.const 2
     local.get $19
     local.get $8
     local.get $5
     select
     local.tee $5
     local.get $11
     i32.shr_u
     local.tee $9
     i32.const 1
     i32.and
     i32.sub
     i32.const 0
     local.get $5
     local.get $9
     local.get $11
     i32.shl
     i32.eq
     select
    else
     i32.const 0
    end
   end
   local.set $5
  end
  local.get $19
  i32.eqz
  if
   local.get $8
   i32.const 2146435072
   i32.eq
   if
    local.get $18
    local.get $4
    i32.const 1072693248
    i32.sub
    i32.or
    if
     local.get $4
     i32.const 1072693248
     i32.ge_s
     if
      local.get $1
      f64.const 0
      local.get $7
      i32.const 0
      i32.ge_s
      select
      return
     else
      local.get $1
      f64.neg
      f64.const 0
      local.get $7
      i32.const 0
      i32.lt_s
      select
      return
     end
     unreachable
    else
     f64.const nan:0x8000000000000
     return
    end
    unreachable
   end
   local.get $8
   i32.const 1072693248
   i32.eq
   if
    local.get $7
    i32.const 0
    i32.ge_s
    if
     local.get $0
     return
    end
    f64.const 1
    local.get $0
    f64.div
    return
   end
   local.get $7
   i32.const 1073741824
   i32.eq
   if
    local.get $0
    local.get $0
    f64.mul
    return
   end
   local.get $7
   i32.const 1071644672
   i32.eq
   if
    local.get $15
    i32.const 0
    i32.ge_s
    if
     local.get $0
     f64.sqrt
     return
    end
   end
  end
  local.get $0
  f64.abs
  local.set $2
  local.get $18
  i32.eqz
  if
   i32.const 1
   local.get $4
   i32.const 1072693248
   i32.eq
   local.get $4
   i32.const 2146435072
   i32.eq
   i32.const 1
   local.get $4
   select
   select
   if
    f64.const 1
    local.get $2
    f64.div
    local.get $2
    local.get $7
    i32.const 0
    i32.lt_s
    select
    local.set $2
    local.get $15
    i32.const 0
    i32.lt_s
    if (result f64)
     local.get $5
     local.get $4
     i32.const 1072693248
     i32.sub
     i32.or
     if (result f64)
      local.get $2
      f64.neg
      local.get $2
      local.get $5
      i32.const 1
      i32.eq
      select
     else
      local.get $2
      local.get $2
      f64.sub
      local.tee $0
      local.get $0
      f64.div
     end
    else
     local.get $2
    end
    return
   end
  end
  f64.const 1
  local.set $10
  local.get $15
  i32.const 0
  i32.lt_s
  if
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $0
    f64.sub
    local.tee $0
    local.get $0
    f64.div
    return
   end
   f64.const -1
   f64.const 1
   local.get $5
   i32.const 1
   i32.eq
   select
   local.set $10
  end
  local.get $8
  i32.const 1105199104
  i32.gt_s
  if (result f64)
   local.get $8
   i32.const 1139802112
   i32.gt_s
   if
    local.get $4
    i32.const 1072693247
    i32.le_s
    if
     f64.const inf
     f64.const 0
     local.get $7
     i32.const 0
     i32.lt_s
     select
     return
    end
    local.get $4
    i32.const 1072693248
    i32.ge_s
    if
     f64.const inf
     f64.const 0
     local.get $7
     i32.const 0
     i32.gt_s
     select
     return
    end
   end
   local.get $4
   i32.const 1072693247
   i32.lt_s
   if
    local.get $10
    f64.const 1.e+300
    f64.mul
    f64.const 1.e+300
    f64.mul
    local.get $10
    f64.const 1e-300
    f64.mul
    f64.const 1e-300
    f64.mul
    local.get $7
    i32.const 0
    i32.lt_s
    select
    return
   end
   local.get $4
   i32.const 1072693248
   i32.gt_s
   if
    local.get $10
    f64.const 1.e+300
    f64.mul
    f64.const 1.e+300
    f64.mul
    local.get $10
    f64.const 1e-300
    f64.mul
    f64.const 1e-300
    f64.mul
    local.get $7
    i32.const 0
    i32.gt_s
    select
    return
   end
   f64.const 1.4426950216293335
   local.get $2
   f64.const 1
   f64.sub
   local.tee $0
   f64.mul
   local.tee $2
   local.get $0
   f64.const 1.9259629911266175e-08
   f64.mul
   local.get $0
   local.get $0
   f64.mul
   f64.const 0.5
   local.get $0
   f64.const 0.3333333333333333
   local.get $0
   f64.const 0.25
   f64.mul
   f64.sub
   f64.mul
   f64.sub
   f64.mul
   f64.const 1.4426950408889634
   f64.mul
   f64.sub
   local.tee $0
   f64.add
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $6
   local.get $0
   local.get $6
   local.get $2
   f64.sub
   f64.sub
  else
   local.get $4
   i32.const 1048576
   i32.lt_s
   if (result i32)
    local.get $2
    f64.const 9007199254740992
    f64.mul
    local.tee $2
    i64.reinterpret_f64
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    local.set $4
    i32.const -53
   else
    i32.const 0
   end
   local.get $4
   i32.const 20
   i32.shr_s
   i32.const 1023
   i32.sub
   i32.add
   local.set $7
   local.get $4
   i32.const 1048575
   i32.and
   local.tee $5
   i32.const 1072693248
   i32.or
   local.set $4
   local.get $5
   i32.const 235662
   i32.gt_s
   if
    local.get $5
    i32.const 767610
    i32.lt_s
    if
     i32.const 1
     local.set $16
    else
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     local.get $4
     i32.const -1048576
     i32.add
     local.set $4
    end
   end
   f64.const 0.9617967009544373
   local.get $2
   i64.reinterpret_f64
   i64.const 4294967295
   i64.and
   local.get $4
   i64.extend_i32_s
   i64.const 32
   i64.shl
   i64.or
   f64.reinterpret_i64
   local.tee $6
   f64.const 1.5
   f64.const 1
   local.get $16
   select
   local.tee $3
   f64.sub
   local.tee $2
   f64.const 1
   local.get $6
   local.get $3
   f64.add
   f64.div
   local.tee $0
   f64.mul
   local.tee $17
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.tee $14
   f64.const 3
   local.get $14
   local.get $14
   f64.mul
   local.tee $20
   f64.add
   local.get $17
   local.get $17
   f64.mul
   local.tee $12
   local.get $12
   f64.mul
   f64.const 0.5999999999999946
   local.get $12
   f64.const 0.4285714285785502
   local.get $12
   f64.const 0.33333332981837743
   local.get $12
   f64.const 0.272728123808534
   local.get $12
   f64.const 0.23066074577556175
   local.get $12
   f64.const 0.20697501780033842
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.get $0
   local.get $2
   local.get $14
   local.get $4
   i32.const 1
   i32.shr_s
   i32.const 536870912
   i32.or
   i32.const 524288
   i32.add
   local.get $16
   i32.const 18
   i32.shl
   i32.add
   i64.extend_i32_s
   i64.const 32
   i64.shl
   f64.reinterpret_i64
   local.tee $0
   f64.mul
   f64.sub
   local.get $14
   local.get $6
   local.get $0
   local.get $3
   f64.sub
   f64.sub
   f64.mul
   f64.sub
   f64.mul
   local.tee $3
   local.get $14
   local.get $17
   f64.add
   f64.mul
   f64.add
   local.tee $0
   f64.add
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.tee $6
   f64.mul
   local.tee $2
   local.get $3
   local.get $6
   f64.mul
   local.get $0
   local.get $6
   f64.const 3
   f64.sub
   local.get $20
   f64.sub
   f64.sub
   local.get $17
   f64.mul
   f64.add
   local.tee $0
   f64.add
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.tee $3
   f64.mul
   local.tee $20
   f64.const -7.028461650952758e-09
   local.get $3
   f64.mul
   local.get $0
   local.get $3
   local.get $2
   f64.sub
   f64.sub
   f64.const 0.9617966939259756
   f64.mul
   f64.add
   f64.const 1.350039202129749e-08
   f64.const 0
   local.get $16
   select
   f64.add
   local.tee $3
   f64.add
   f64.const 0.5849624872207642
   f64.const 0
   local.get $16
   select
   local.tee $2
   f64.add
   local.get $7
   f64.convert_i32_s
   local.tee $0
   f64.add
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $6
   local.get $3
   local.get $6
   local.get $0
   f64.sub
   local.get $2
   f64.sub
   local.get $20
   f64.sub
   f64.sub
  end
  local.set $2
  local.get $1
  local.get $1
  i64.reinterpret_f64
  i64.const -4294967296
  i64.and
  f64.reinterpret_i64
  local.tee $0
  f64.sub
  local.get $6
  f64.mul
  local.get $1
  local.get $2
  f64.mul
  f64.add
  local.tee $1
  local.get $0
  local.get $6
  f64.mul
  local.tee $3
  f64.add
  local.tee $0
  i64.reinterpret_f64
  local.tee $13
  i32.wrap_i64
  local.set $5
  block $folding-inner1
   block $folding-inner0
    local.get $13
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    local.tee $11
    i32.const 1083179008
    i32.ge_s
    if
     local.get $5
     local.get $11
     i32.const 1083179008
     i32.sub
     i32.or
     local.get $1
     f64.const 8.008566259537294e-17
     f64.add
     local.get $0
     local.get $3
     f64.sub
     f64.gt
     i32.or
     br_if $folding-inner0
    else
     local.get $11
     i32.const 2147483647
     i32.and
     i32.const 1083231232
     i32.ge_s
     i32.const 0
     local.get $5
     local.get $11
     i32.const -1064252416
     i32.sub
     i32.or
     local.get $1
     local.get $0
     local.get $3
     f64.sub
     f64.le
     i32.or
     select
     br_if $folding-inner1
    end
    local.get $11
    i32.const 2147483647
    i32.and
    local.tee $9
    i32.const 20
    i32.shr_s
    i32.const 1023
    i32.sub
    local.set $5
    i32.const 0
    local.set $7
    local.get $9
    i32.const 1071644672
    i32.gt_s
    if
     i32.const 1048575
     local.get $11
     i32.const 1048576
     local.get $5
     i32.const 1
     i32.add
     i32.shr_s
     i32.add
     local.tee $9
     i32.const 2147483647
     i32.and
     i32.const 20
     i32.shr_s
     i32.const 1023
     i32.sub
     local.tee $5
     i32.shr_s
     i32.const -1
     i32.xor
     local.get $9
     i32.and
     i64.extend_i32_s
     i64.const 32
     i64.shl
     f64.reinterpret_i64
     local.set $0
     i32.const 0
     local.get $9
     i32.const 1048575
     i32.and
     i32.const 1048576
     i32.or
     i32.const 20
     local.get $5
     i32.sub
     i32.shr_s
     local.tee $7
     i32.sub
     local.get $7
     local.get $11
     i32.const 0
     i32.lt_s
     select
     local.set $7
     local.get $3
     local.get $0
     f64.sub
     local.set $3
    end
    local.get $1
    local.get $3
    f64.add
    i64.reinterpret_f64
    i64.const -4294967296
    i64.and
    f64.reinterpret_i64
    local.tee $0
    f64.const 0.6931471824645996
    f64.mul
    local.tee $2
    local.get $1
    local.get $0
    local.get $3
    f64.sub
    f64.sub
    f64.const 0.6931471805599453
    f64.mul
    local.get $0
    f64.const -1.904654299957768e-09
    f64.mul
    f64.add
    local.tee $1
    f64.add
    local.tee $3
    local.get $3
    f64.mul
    local.set $0
    local.get $10
    f64.const 1
    local.get $3
    local.get $3
    local.get $0
    f64.const 0.16666666666666602
    local.get $0
    f64.const -2.7777777777015593e-03
    local.get $0
    f64.const 6.613756321437934e-05
    local.get $0
    f64.const -1.6533902205465252e-06
    local.get $0
    f64.const 4.1381367970572385e-08
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    f64.sub
    local.tee $0
    f64.mul
    local.get $0
    f64.const 2
    f64.sub
    f64.div
    local.get $1
    local.get $3
    local.get $2
    f64.sub
    f64.sub
    local.tee $0
    local.get $3
    local.get $0
    f64.mul
    f64.add
    f64.sub
    local.get $3
    f64.sub
    f64.sub
    local.tee $0
    i64.reinterpret_f64
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    local.get $7
    i32.const 20
    i32.shl
    i32.add
    local.tee $5
    i32.const 20
    i32.shr_s
    i32.const 0
    i32.le_s
    if (result f64)
     local.get $0
     local.get $7
     call $~lib/math/NativeMath.scalbn
    else
     local.get $0
     i64.reinterpret_f64
     i64.const 4294967295
     i64.and
     local.get $5
     i64.extend_i32_s
     i64.const 32
     i64.shl
     i64.or
     f64.reinterpret_i64
    end
    f64.mul
    return
   end
   local.get $10
   f64.const 1.e+300
   f64.mul
   f64.const 1.e+300
   f64.mul
   return
  end
  local.get $10
  f64.const 1e-300
  f64.mul
  f64.const 1e-300
  f64.mul
 )
 (func $~lib/math/NativeMath.log (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i64)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  local.get $0
  i64.reinterpret_f64
  local.tee $2
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $1
  i32.const 1048576
  i32.lt_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 31
   i32.shr_u
  end
  if
   local.get $2
   i64.const 1
   i64.shl
   i64.eqz
   if
    f64.const -1
    local.get $0
    local.get $0
    f64.mul
    f64.div
    return
   end
   local.get $1
   i32.const 31
   i32.shr_u
   if
    local.get $0
    local.get $0
    f64.sub
    f64.const 0
    f64.div
    return
   end
   i32.const -54
   local.set $5
   local.get $0
   f64.const 18014398509481984
   f64.mul
   i64.reinterpret_f64
   local.tee $2
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   local.set $1
  else
   local.get $1
   i32.const 2146435072
   i32.ge_u
   if
    local.get $0
    return
   else
    local.get $2
    i64.const 32
    i64.shl
    i64.eqz
    i32.const 0
    local.get $1
    i32.const 1072693248
    i32.eq
    select
    if
     f64.const 0
     return
    end
   end
  end
  local.get $2
  i64.const 4294967295
  i64.and
  local.get $1
  i32.const 614242
  i32.add
  local.tee $1
  i32.const 1048575
  i32.and
  i32.const 1072079006
  i32.add
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  f64.reinterpret_i64
  f64.const 1
  f64.sub
  local.tee $3
  f64.const 2
  local.get $3
  f64.add
  f64.div
  local.tee $4
  local.get $4
  f64.mul
  local.set $0
  local.get $4
  f64.const 0.5
  local.get $3
  f64.mul
  local.get $3
  f64.mul
  local.tee $4
  local.get $0
  f64.const 0.6666666666666735
  local.get $0
  local.get $0
  f64.mul
  local.tee $0
  f64.const 0.2857142874366239
  local.get $0
  f64.const 0.1818357216161805
  local.get $0
  f64.const 0.14798198605116586
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.get $0
  f64.const 0.3999999999940942
  local.get $0
  f64.const 0.22222198432149784
  local.get $0
  f64.const 0.15313837699209373
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.add
  f64.mul
  local.get $5
  local.get $1
  i32.const 20
  i32.shr_s
  i32.const 1023
  i32.sub
  i32.add
  f64.convert_i32_s
  local.tee $0
  f64.const 1.9082149292705877e-10
  f64.mul
  f64.add
  local.get $4
  f64.sub
  local.get $3
  f64.add
  local.get $0
  f64.const 0.6931471803691238
  f64.mul
  f64.add
 )
 (func $assembly/index/Temperature (param $0 i32) (param $1 i32) (param $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.get $1
  i32.mul
  i32.const 2
  i32.shl
  local.set $0
  local.get $2
  f64.const 100
  f64.div
  local.set $3
  loop $for-loop|0
   local.get $4
   local.get $0
   i32.lt_s
   if
    local.get $4
    i32.load8_u
    drop
    local.get $3
    f64.const 66
    f64.le
    if (result f64)
     f64.const 255
    else
     f64.const 329.698727446
     local.get $3
     f64.const 60
     f64.sub
     f64.const -0.1332047592
     call $~lib/math/NativeMath.pow
     f64.mul
     local.tee $2
     f64.const 0
     f64.lt
     if (result f64)
      f64.const 0
     else
      f64.const 255
      local.get $2
      local.get $2
      f64.const 255
      f64.gt
      select
     end
    end
    i32.trunc_f64_u
    local.set $5
    local.get $4
    i32.load8_u offset=1
    drop
    local.get $3
    f64.const 66
    f64.le
    if
     f64.const 99.4708025861
     local.get $3
     call $~lib/math/NativeMath.log
     f64.mul
     f64.const 161.1195681661
     f64.sub
     local.tee $2
     f64.const 0
     f64.lt
     if
      f64.const 0
      local.set $2
     end
     local.get $2
     f64.const 255
     f64.gt
     if
      f64.const 255
      local.set $2
     end
    else
     f64.const 288.1221695283
     local.get $3
     f64.const 60
     f64.sub
     f64.const -0.0755148492
     call $~lib/math/NativeMath.pow
     f64.mul
     local.tee $2
     f64.const 0
     f64.lt
     if (result f64)
      f64.const 0
     else
      f64.const 255
      local.get $2
      local.get $2
      f64.const 255
      f64.gt
      select
     end
     local.set $2
    end
    local.get $2
    i32.trunc_f64_u
    local.set $6
    local.get $4
    i32.load8_u offset=2
    drop
    local.get $3
    f64.const 66
    f64.ge
    if (result f64)
     f64.const 255
    else
     local.get $3
     f64.const 19
     f64.le
     if (result f64)
      f64.const 0
     else
      f64.const 138.5177312231
      local.get $3
      f64.const 10
      f64.sub
      call $~lib/math/NativeMath.log
      f64.mul
      f64.const 305.0447927307
      f64.sub
      local.tee $2
      f64.const 0
      f64.lt
      if (result f64)
       f64.const 0
      else
       f64.const 255
       local.get $2
       local.get $2
       f64.const 255
       f64.gt
       select
      end
     end
    end
    i32.trunc_f64_u
    local.set $7
    local.get $0
    local.get $4
    i32.add
    local.tee $1
    local.get $5
    i32.store8
    local.get $1
    local.get $6
    i32.store8 offset=1
    local.get $1
    local.get $7
    i32.store8 offset=2
    local.get $4
    i32.const 4
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
 )
 (func $assembly/index/Resize (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.get $1
  i32.mul
  i32.const 2
  i32.shl
  local.set $5
  local.get $1
  local.get $3
  i32.sub
  local.tee $1
  local.get $3
  i32.add
  local.set $3
  local.get $2
  local.get $0
  local.get $2
  i32.sub
  local.tee $2
  i32.add
  local.tee $6
  local.set $7
  local.get $1
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   i32.const 0
   local.get $0
   i32.const 0
   i32.ge_s
   select
   if
    local.get $2
    local.set $1
    loop $for-loop|1
     local.get $1
     local.get $6
     i32.lt_s
     i32.const 0
     local.get $1
     i32.const 0
     i32.ge_s
     select
     if
      local.get $4
      i32.const 2
      i32.shl
      local.get $5
      i32.add
      local.get $1
      local.get $0
      local.get $7
      i32.mul
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.store
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $assembly/index/BalanceColor (param $0 i32) (param $1 i32) (param $2 f64) (param $3 f64) (param $4 f64)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  local.get $0
  local.get $1
  i32.mul
  i32.const 2
  i32.shl
  local.set $0
  loop $for-loop|0
   local.get $5
   local.get $0
   i32.lt_s
   if
    f64.const 255
    local.get $3
    f64.div
    local.get $5
    i32.load8_u
    f64.convert_i32_u
    f64.mul
    local.set $7
    f64.const 255
    local.get $2
    f64.div
    local.get $5
    i32.load8_u offset=2
    f64.convert_i32_u
    f64.mul
    local.set $8
    f64.const 255
    local.get $4
    f64.div
    local.get $5
    i32.load8_u offset=1
    f64.convert_i32_u
    f64.mul
    local.tee $6
    f64.const 255
    f64.gt
    if (result f64)
     f64.const 255
    else
     f64.const 0
     local.get $6
     local.get $6
     f64.const 0
     f64.lt
     select
    end
    local.set $6
    local.get $0
    local.get $5
    i32.add
    local.tee $1
    f64.const 255
    f64.const 0
    local.get $7
    local.get $7
    f64.const 0
    f64.lt
    select
    local.get $7
    f64.const 255
    f64.gt
    select
    i32.trunc_f64_u
    i32.store8
    local.get $1
    local.get $6
    i32.trunc_f64_u
    i32.store8 offset=1
    local.get $1
    f64.const 255
    f64.const 0
    local.get $8
    local.get $8
    f64.const 0
    f64.lt
    select
    local.get $8
    f64.const 255
    f64.gt
    select
    i32.trunc_f64_u
    i32.store8 offset=2
    local.get $5
    i32.const 4
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
 )
 (func $assembly/index/ZoomTest (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.mul
  i32.const 2
  i32.shl
  local.set $0
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.lt_s
   if
    local.get $2
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.get $2
    i32.const 2
    i32.shl
    i32.load
    i32.store
    local.get $2
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.get $2
    i32.const 2
    i32.shl
    i32.load offset=1
    i32.store
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/rt/pure/__collect
  nop
 )
 (func $~lib/rt/pure/decrement (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 268435455
  i32.and
  local.set $1
  local.get $0
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 1152
   i32.const 122
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   block $__inlined_func$~lib/rt/__visit_members
    block $switch$1$default
     block $switch$1$case$4
      local.get $0
      i32.const 8
      i32.add
      i32.load
      br_table $__inlined_func$~lib/rt/__visit_members $__inlined_func$~lib/rt/__visit_members $switch$1$case$4 $switch$1$default
     end
     local.get $0
     i32.load offset=16
     local.tee $1
     if
      local.get $1
      i32.const 1212
      i32.ge_u
      if
       local.get $1
       i32.const 16
       i32.sub
       call $~lib/rt/pure/decrement
      end
     end
     br $__inlined_func$~lib/rt/__visit_members
    end
    unreachable
   end
   local.get $2
   i32.const -2147483648
   i32.and
   if
    i32.const 0
    i32.const 1152
    i32.const 126
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $0
   i32.load
   i32.const 1
   i32.or
   i32.store
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   i32.const 0
   i32.le_u
   if
    i32.const 0
    i32.const 1152
    i32.const 136
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.sub
   local.get $2
   i32.const -268435456
   i32.and
   i32.or
   i32.store offset=4
  end
 )
)
