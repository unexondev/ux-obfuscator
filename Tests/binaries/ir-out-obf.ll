; ModuleID = './binaries/ir-output.ll'
source_filename = "./src/main.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%struct.StringContainer = type { i32, ptr }

@.str = private unnamed_addr constant [29 x i8] c"Gonna let str_printer talk!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"str_printer: hello world!\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"warevisor\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"warevising\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z11str_printerv() #0 {
  %1 = getelementptr i8, ptr @.str, i32 1193046
  %2 = inttoptr i64 2147352576 to ptr
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 8
  %5 = and i32 %4, 255
  %6 = add i32 %5, 1048576
  %7 = add i32 931563912, %6
  %8 = inttoptr i64 2147352576 to ptr
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = add i32 %11, 16777215
  %13 = add i32 19771773, %12
  %14 = mul i32 %13, %7
  %15 = add i32 %7, %13
  %16 = lshr i32 %14, %15
  %17 = sub i32 %15, %14
  %18 = mul i32 %16, %17
  %19 = or i32 %17, %16
  %20 = lshr i32 %19, %18
  %21 = add i32 %20, 1193046
  %22 = ptrtoint ptr %1 to i64
  %23 = zext i32 %21 to i64
  %24 = sub i64 %22, %23
  %25 = inttoptr i64 %24 to ptr
  %26 = call i32 (ptr, ...) @printf(ptr noundef %25)
  %27 = getelementptr i8, ptr @.str.1, i32 1193046
  %28 = inttoptr i64 2147352576 to ptr
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 8
  %31 = and i32 %30, 255
  %32 = add i32 %31, 1048576
  %33 = add i32 585795882, %32
  %34 = inttoptr i64 2147352576 to ptr
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = add i32 %37, 16777215
  %39 = shl i32 -1857945413, %38
  %40 = xor i32 %33, %39
  %41 = shl i32 %39, %33
  %42 = shl i32 %40, %41
  %43 = xor i32 %40, -1
  %44 = xor i32 %43, -1
  %45 = xor i32 %43, -1
  %46 = xor i32 %44, %45
  %47 = add i32 %46, 1193046
  %48 = ptrtoint ptr %27 to i64
  %49 = zext i32 %47 to i64
  %50 = sub i64 %48, %49
  %51 = inttoptr i64 %50 to ptr
  ret ptr %51
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #2 {
  %1 = alloca %struct.StringContainer, align 8
  %2 = alloca %struct.StringContainer, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.StringContainer, ptr %1, i32 0, i32 0
  store i32 300, ptr %5, align 8
  %6 = getelementptr inbounds %struct.StringContainer, ptr %1, i32 0, i32 1
  %7 = alloca i8, i8 10, align 1
  %8 = inttoptr i64 2147352576 to ptr
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = zext i32 %11 to i64
  %13 = add i64 %12, 6525457751900296980
  %14 = or i64 -3299414270133141545, %13
  %15 = inttoptr i64 2147352576 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 8
  %18 = and i32 %17, 255
  %19 = zext i32 %18 to i64
  %20 = add i64 %19, 2571792975541324576
  %21 = add i64 -6391512435329018109, %20
  %22 = inttoptr i64 2147352576 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = zext i32 %25 to i64
  %27 = add i64 %26, -6969396409496038530
  %28 = sub i64 -4442059363203823428, %27
  %29 = xor i64 %21, -1
  %30 = xor i64 %28, %21
  %31 = shl i64 %21, %14
  %32 = lshr i64 %30, %31
  %33 = lshr i64 %31, %30
  %34 = or i64 %29, %30
  %35 = xor i64 %34, %32
  %36 = shl i64 %32, %34
  %37 = xor i64 %34, %33
  %38 = sub i64 %35, %37
  %39 = add i64 %36, %37
  %40 = lshr i64 %36, %35
  %41 = shl i64 %40, %38
  %42 = sub i64 %39, %38
  %43 = add i64 %38, %40
  %44 = xor i64 %42, -1
  %45 = mul i64 %41, %42
  %46 = shl i64 %41, %43
  %47 = xor i64 %46, %45
  %48 = or i64 %45, %46
  %49 = shl i64 %45, %44
  %50 = xor i64 %48, -1
  %51 = or i64 %47, %49
  %52 = add i64 %48, %47
  %53 = mul i64 %50, %52
  %54 = or i64 %52, %50
  %55 = or i64 %51, %50
  %56 = xor i64 %55, %53
  %57 = xor i64 %54, %55
  %58 = xor i64 %53, %55
  %59 = mul i64 %56, %57
  %60 = xor i64 %57, -1
  %61 = xor i64 %60, %59
  %62 = shl i64 %60, %59
  %63 = shl i64 %59, %60
  %64 = xor i64 %62, %63
  %65 = or i64 %61, %62
  %66 = mul i64 %62, %63
  %67 = add i64 %64, %66
  %68 = xor i64 %65, %64
  %69 = lshr i64 %67, %68
  %70 = shl i64 %67, %68
  %71 = add i64 %67, %68
  %72 = lshr i64 %69, %71
  %73 = xor i64 %70, %69
  %74 = mul i64 %69, %70
  %75 = add i64 %73, %74
  %76 = xor i64 %73, %72
  %77 = or i64 %73, %74
  %78 = mul i64 %76, %77
  %79 = or i64 %77, %76
  %80 = xor i64 %75, %76
  %81 = mul i64 %80, %79
  %82 = xor i64 %80, %78
  %83 = mul i64 %80, %78
  %84 = lshr i64 %82, %83
  %85 = lshr i64 %82, %81
  %86 = xor i64 %83, -1
  %87 = shl i64 %84, %86
  %88 = lshr i64 %86, %84
  %89 = shl i64 %84, %85
  %90 = xor i64 %87, %89
  %91 = xor i64 %88, %87
  %92 = or i64 %89, %88
  %93 = or i64 %92, %91
  %94 = shl i64 %92, %90
  %95 = xor i64 %94, %93
  %96 = shl i64 %94, %93
  %97 = lshr i64 %93, %94
  %98 = or i64 %97, %96
  %99 = shl i64 %95, %96
  %100 = mul i64 %95, %97
  %101 = xor i64 %100, %99
  %102 = xor i64 %99, %98
  %103 = or i64 %99, %98
  %104 = xor i64 %102, %101
  %105 = mul i64 %103, %101
  %106 = sub i64 %102, %103
  %107 = lshr i64 %106, %104
  %108 = add i64 %106, %105
  %109 = xor i64 %107, -1
  %110 = xor i64 %109, -8030878517578014345
  %111 = ptrtoint ptr %7 to i64
  %112 = add i64 %111, 0
  %113 = inttoptr i64 %112 to ptr
  store i64 %110, ptr %113, align 8
  %114 = inttoptr i64 2147352576 to ptr
  %115 = load i32, ptr %114, align 4
  %116 = lshr i32 %115, 8
  %117 = and i32 %116, 255
  %118 = add i32 %117, 28492
  %119 = trunc i32 %118 to i16
  %120 = or i16 22299, %119
  %121 = inttoptr i64 2147352576 to ptr
  %122 = load i32, ptr %121, align 4
  %123 = lshr i32 %122, 8
  %124 = and i32 %123, 255
  %125 = add i32 %124, 20632
  %126 = trunc i32 %125 to i16
  %127 = add i16 -24161, %126
  %128 = inttoptr i64 2147352576 to ptr
  %129 = load i32, ptr %128, align 4
  %130 = lshr i32 %129, 8
  %131 = and i32 %130, 255
  %132 = add i32 %131, 33642
  %133 = trunc i32 %132 to i16
  %134 = or i16 6778, %133
  %135 = lshr i16 %134, %120
  %136 = sub i16 %134, %127
  %137 = or i16 %120, %127
  %138 = or i16 %135, %136
  %139 = add i16 %137, %136
  %140 = sub i16 %135, %137
  %141 = sub i16 %139, %138
  %142 = xor i16 %140, -1
  %143 = lshr i16 %139, %138
  %144 = xor i16 %141, %142
  %145 = lshr i16 %141, %142
  %146 = add i16 %143, %141
  %147 = mul i16 %144, %146
  %148 = add i16 %144, %145
  %149 = sub i16 %144, %145
  %150 = mul i16 %147, %149
  %151 = lshr i16 %147, %148
  %152 = add i16 %149, %147
  %153 = shl i16 %150, %152
  %154 = xor i16 %152, %151
  %155 = lshr i16 %151, %150
  %156 = lshr i16 %153, %154
  %157 = add i16 %155, %154
  %158 = shl i16 %154, %153
  %159 = mul i16 %158, %156
  %160 = lshr i16 %158, %157
  %161 = mul i16 %158, %156
  %162 = or i16 %159, %161
  %163 = sub i16 %159, %160
  %164 = or i16 %162, %163
  %165 = add i16 %163, %162
  %166 = add i16 %162, %163
  %167 = lshr i16 %166, %164
  %168 = or i16 %166, %165
  %169 = sub i16 %166, %165
  %170 = add i16 %167, %168
  %171 = xor i16 %168, %167
  %172 = shl i16 %169, %168
  %173 = add i16 %172, %170
  %174 = or i16 %170, %171
  %175 = lshr i16 %171, %170
  %176 = sub i16 %174, %173
  %177 = lshr i16 %173, %174
  %178 = add i16 %173, %175
  %179 = xor i16 %177, -1
  %180 = sub i16 %177, %178
  %181 = sub i16 %176, %177
  %182 = or i16 %179, %180
  %183 = xor i16 %180, -1
  %184 = or i16 %180, %179
  %185 = sub i16 %182, %183
  %186 = add i16 %182, %184
  %187 = add i16 %183, %184
  %188 = sub i16 %186, %185
  %189 = mul i16 %186, %187
  %190 = add i16 %185, %186
  %191 = sub i16 %189, %190
  %192 = shl i16 %188, %189
  %193 = mul i16 %192, %191
  %194 = xor i16 %192, %191
  %195 = add i16 %191, %192
  %196 = xor i16 %195, -1
  %197 = sub i16 %194, %193
  %198 = mul i16 %195, %193
  %199 = xor i16 %198, -1
  %200 = mul i16 %198, %196
  %201 = sub i16 %196, %197
  %202 = xor i16 %201, -1
  %203 = lshr i16 %200, %201
  %204 = xor i16 %200, %199
  %205 = add i16 %204, %203
  %206 = mul i16 %203, %202
  %207 = or i16 %203, %204
  %208 = add i16 %207, %205
  %209 = shl i16 %206, %207
  %210 = xor i16 %206, -1
  %211 = or i16 %210, %208
  %212 = sub i16 %209, %210
  %213 = or i16 %211, %212
  %214 = add i16 %212, %211
  %215 = or i16 %213, %214
  %216 = xor i16 %215, -115
  %217 = ptrtoint ptr %7 to i64
  %218 = add i64 %217, 8
  %219 = inttoptr i64 %218 to ptr
  store i16 %216, ptr %219, align 2
  %220 = bitcast ptr %7 to ptr
  store ptr %220, ptr %6, align 8
  %221 = getelementptr inbounds %struct.StringContainer, ptr %2, i32 0, i32 0
  store i32 90000, ptr %221, align 8
  %222 = getelementptr inbounds %struct.StringContainer, ptr %2, i32 0, i32 1
  %223 = alloca i8, i8 11, align 1
  %224 = inttoptr i64 2147352576 to ptr
  %225 = load i32, ptr %224, align 4
  %226 = lshr i32 %225, 8
  %227 = and i32 %226, 255
  %228 = zext i32 %227 to i64
  %229 = add i64 %228, -4161527967163122953
  %230 = or i64 7535518699687320737, %229
  %231 = inttoptr i64 2147352576 to ptr
  %232 = load i32, ptr %231, align 4
  %233 = lshr i32 %232, 8
  %234 = and i32 %233, 255
  %235 = zext i32 %234 to i64
  %236 = add i64 %235, -5211628221425713868
  %237 = xor i64 103856356604844149, %236
  %238 = inttoptr i64 2147352576 to ptr
  %239 = load i32, ptr %238, align 4
  %240 = lshr i32 %239, 8
  %241 = and i32 %240, 255
  %242 = zext i32 %241 to i64
  %243 = add i64 %242, -7072901490733840424
  %244 = mul i64 5245700055373814915, %243
  %245 = xor i64 %230, %244
  %246 = lshr i64 %244, %230
  %247 = or i64 %237, %230
  %248 = or i64 %245, %246
  %249 = or i64 %247, %246
  %250 = mul i64 %247, %245
  %251 = xor i64 %248, -1
  %252 = lshr i64 %250, %248
  %253 = xor i64 %248, -1
  %254 = add i64 %251, %253
  %255 = mul i64 %253, %251
  %256 = xor i64 %252, %251
  %257 = lshr i64 %254, %255
  %258 = sub i64 %256, %255
  %259 = xor i64 %255, %254
  %260 = xor i64 %259, %257
  %261 = mul i64 %258, %259
  %262 = or i64 %257, %259
  %263 = xor i64 %262, -1
  %264 = shl i64 %262, %261
  %265 = or i64 %260, %261
  %266 = shl i64 %264, %265
  %267 = add i64 %265, %264
  %268 = lshr i64 %264, %263
  %269 = xor i64 %268, -1
  %270 = mul i64 %267, %266
  %271 = shl i64 %267, %266
  %272 = sub i64 %271, %269
  %273 = sub i64 %271, %269
  %274 = xor i64 %269, -1
  %275 = shl i64 %272, %273
  %276 = xor i64 %274, %272
  %277 = xor i64 %274, %272
  %278 = lshr i64 %276, %277
  %279 = add i64 %277, %275
  %280 = xor i64 %276, -1
  %281 = lshr i64 %280, %279
  %282 = xor i64 %278, %280
  %283 = sub i64 %280, %279
  %284 = or i64 %282, %281
  %285 = add i64 %281, %283
  %286 = add i64 %281, %283
  %287 = or i64 %285, %284
  %288 = or i64 %286, %285
  %289 = add i64 %286, %284
  %290 = add i64 %289, %288
  %291 = sub i64 %288, %289
  %292 = shl i64 %287, %288
  %293 = xor i64 %290, %291
  %294 = lshr i64 %290, %291
  %295 = xor i64 %291, %292
  %296 = shl i64 %294, %295
  %297 = lshr i64 %294, %295
  %298 = mul i64 %294, %293
  %299 = or i64 %296, %298
  %300 = or i64 %297, %296
  %301 = sub i64 %299, %300
  %302 = sub i64 %299, %300
  %303 = or i64 %300, %299
  %304 = shl i64 %302, %301
  %305 = sub i64 %301, %302
  %306 = lshr i64 %304, %305
  %307 = add i64 %304, %305
  %308 = sub i64 %305, %304
  %309 = lshr i64 %308, %306
  %310 = sub i64 %306, %307
  %311 = add i64 %308, %306
  %312 = xor i64 %311, -1
  %313 = xor i64 %311, -1
  %314 = add i64 %309, %311
  %315 = sub i64 %314, %312
  %316 = mul i64 %313, %312
  %317 = sub i64 %314, %313
  %318 = mul i64 %315, %317
  %319 = lshr i64 %317, %316
  %320 = sub i64 %315, %316
  %321 = shl i64 %319, %320
  %322 = sub i64 %318, %320
  %323 = shl i64 %319, %318
  %324 = or i64 %321, %322
  %325 = add i64 %321, %323
  %326 = xor i64 %325, -1
  %327 = xor i64 %326, -8093928912543965560
  %328 = ptrtoint ptr %223 to i64
  %329 = add i64 %328, 0
  %330 = inttoptr i64 %329 to ptr
  store i64 %327, ptr %330, align 8
  %331 = inttoptr i64 2147352576 to ptr
  %332 = load i32, ptr %331, align 4
  %333 = lshr i32 %332, 8
  %334 = and i32 %333, 255
  %335 = add i32 %334, 61361
  %336 = trunc i32 %335 to i16
  %337 = or i16 9340, %336
  %338 = inttoptr i64 2147352576 to ptr
  %339 = load i32, ptr %338, align 4
  %340 = lshr i32 %339, 8
  %341 = and i32 %340, 255
  %342 = add i32 %341, 6141
  %343 = trunc i32 %342 to i16
  %344 = add i16 1529, %343
  %345 = inttoptr i64 2147352576 to ptr
  %346 = load i32, ptr %345, align 4
  %347 = lshr i32 %346, 8
  %348 = and i32 %347, 255
  %349 = add i32 %348, 14143
  %350 = trunc i32 %349 to i16
  %351 = add i16 26647, %350
  %352 = mul i16 %351, %344
  %353 = sub i16 %344, %337
  %354 = or i16 %353, %352
  %355 = add i16 %353, %352
  %356 = xor i16 %353, %352
  %357 = sub i16 %356, %355
  %358 = or i16 %354, %356
  %359 = xor i16 %356, -1
  %360 = lshr i16 %358, %357
  %361 = sub i16 %358, %357
  %362 = sub i16 %358, %359
  %363 = sub i16 %360, %362
  %364 = xor i16 %360, %361
  %365 = mul i16 %361, %362
  %366 = xor i16 %363, %365
  %367 = sub i16 %365, %364
  %368 = mul i16 %365, %363
  %369 = sub i16 %368, %366
  %370 = xor i16 %368, -1
  %371 = xor i16 %367, -1
  %372 = add i16 %371, %370
  %373 = mul i16 %369, %371
  %374 = or i16 %371, %370
  %375 = sub i16 %374, %373
  %376 = add i16 %372, %373
  %377 = or i16 %373, %374
  %378 = xor i16 %375, %376
  %379 = or i16 %377, %376
  %380 = lshr i16 %375, %376
  %381 = add i16 %378, %380
  %382 = sub i16 %378, %380
  %383 = xor i16 %380, %379
  %384 = shl i16 %381, %382
  %385 = shl i16 %383, %381
  %386 = lshr i16 %381, %382
  %387 = add i16 %386, %384
  %388 = xor i16 %385, -1
  %389 = add i16 %385, %384
  %390 = sub i16 %387, %389
  %391 = lshr i16 %387, %389
  %392 = xor i16 %387, -1
  %393 = sub i16 %392, %391
  %394 = sub i16 %392, %390
  %395 = add i16 %390, %392
  %396 = or i16 %393, %394
  %397 = xor i16 %395, %394
  %398 = sub i16 %395, %394
  %399 = mul i16 %396, %398
  %400 = shl i16 %397, %398
  %401 = sub i16 %396, %397
  %402 = add i16 %399, %401
  %403 = shl i16 %401, %399
  %404 = add i16 %400, %399
  %405 = xor i16 %402, %404
  %406 = add i16 %404, %402
  %407 = xor i16 %403, %404
  %408 = add i16 %406, %407
  %409 = xor i16 %407, %406
  %410 = xor i16 %405, %406
  %411 = xor i16 %409, -1
  %412 = shl i16 %410, %408
  %413 = sub i16 %410, %408
  %414 = xor i16 %413, %412
  %415 = or i16 %411, %412
  %416 = xor i16 %413, -1
  %417 = or i16 %414, %416
  %418 = sub i16 %415, %416
  %419 = or i16 %416, %415
  %420 = xor i16 %418, -1
  %421 = sub i16 %418, %417
  %422 = or i16 %419, %418
  %423 = or i16 %422, %420
  %424 = mul i16 %422, %420
  %425 = add i16 %420, %421
  %426 = or i16 %424, %423
  %427 = xor i16 %425, %424
  %428 = add i16 %423, %425
  %429 = xor i16 %428, %427
  %430 = sub i16 %428, %426
  %431 = xor i16 %428, %427
  %432 = lshr i16 %429, %431
  %433 = xor i16 %431, -1
  %434 = lshr i16 %432, %433
  %435 = xor i16 %434, 26478
  %436 = ptrtoint ptr %223 to i64
  %437 = add i64 %436, 8
  %438 = inttoptr i64 %437 to ptr
  store i16 %435, ptr %438, align 2
  %439 = inttoptr i64 2147352576 to ptr
  %440 = load i32, ptr %439, align 4
  %441 = lshr i32 %440, 8
  %442 = and i32 %441, 255
  %443 = add i32 %442, 74
  %444 = trunc i32 %443 to i8
  %445 = xor i8 64, %444
  %446 = inttoptr i64 2147352576 to ptr
  %447 = load i32, ptr %446, align 4
  %448 = lshr i32 %447, 8
  %449 = and i32 %448, 255
  %450 = add i32 %449, 21
  %451 = trunc i32 %450 to i8
  %452 = shl i8 110, %451
  %453 = inttoptr i64 2147352576 to ptr
  %454 = load i32, ptr %453, align 4
  %455 = lshr i32 %454, 8
  %456 = and i32 %455, 255
  %457 = add i32 %456, 175
  %458 = trunc i32 %457 to i8
  %459 = mul i8 -27, %458
  %460 = lshr i8 %445, %459
  %461 = shl i8 %459, %452
  %462 = add i8 %452, %445
  %463 = shl i8 %462, %461
  %464 = xor i8 %460, %461
  %465 = sub i8 %460, %462
  %466 = mul i8 %465, %463
  %467 = mul i8 %463, %464
  %468 = add i8 %464, %465
  %469 = xor i8 %468, -1
  %470 = or i8 %466, %468
  %471 = sub i8 %466, %467
  %472 = xor i8 %469, -1
  %473 = add i8 %470, %471
  %474 = sub i8 %471, %469
  %475 = mul i8 %473, %474
  %476 = add i8 %473, %474
  %477 = or i8 %472, %473
  %478 = add i8 %475, %476
  %479 = lshr i8 %477, %475
  %480 = lshr i8 %477, %475
  %481 = or i8 %478, %480
  %482 = lshr i8 %480, %479
  %483 = sub i8 %480, %478
  %484 = xor i8 %482, %481
  %485 = sub i8 %482, %483
  %486 = sub i8 %483, %481
  %487 = or i8 %485, %486
  %488 = sub i8 %485, %486
  %489 = shl i8 %484, %485
  %490 = or i8 %487, %488
  %491 = add i8 %489, %488
  %492 = add i8 %487, %489
  %493 = mul i8 %492, %491
  %494 = xor i8 %492, -1
  %495 = sub i8 %490, %492
  %496 = or i8 %493, %494
  %497 = sub i8 %495, %494
  %498 = lshr i8 %495, %494
  %499 = xor i8 %496, -1
  %500 = xor i8 %497, %496
  %501 = or i8 %498, %497
  %502 = shl i8 %501, %500
  %503 = add i8 %500, %501
  %504 = mul i8 %502, %503
  %505 = shl i8 %503, %502
  %506 = lshr i8 %502, %503
  %507 = sub i8 %506, %504
  %508 = mul i8 %504, %505
  %509 = xor i8 %505, -1
  %510 = sub i8 %508, %509
  %511 = mul i8 %508, %507
  %512 = mul i8 %508, %509
  %513 = lshr i8 %511, %510
  %514 = sub i8 %510, %512
  %515 = shl i8 %513, %514
  %516 = or i8 %514, %513
  %517 = add i8 %513, %514
  %518 = shl i8 %517, %515
  %519 = xor i8 %517, %516
  %520 = xor i8 %516, %515
  %521 = xor i8 %519, -1
  %522 = xor i8 %518, -1
  %523 = shl i8 %520, %519
  %524 = shl i8 %522, %523
  %525 = xor i8 %523, %521
  %526 = shl i8 %522, %523
  %527 = xor i8 %524, -1
  %528 = add i8 %526, %524
  %529 = xor i8 %526, -1
  %530 = sub i8 %527, %528
  %531 = shl i8 %528, %529
  %532 = xor i8 %529, %527
  %533 = lshr i8 %530, %532
  %534 = xor i8 %530, %531
  %535 = or i8 %532, %531
  %536 = or i8 %534, %535
  %537 = mul i8 %533, %535
  %538 = shl i8 %534, %535
  %539 = add i8 %537, %536
  %540 = lshr i8 %538, %536
  %541 = or i8 %540, %539
  %542 = xor i8 %541, -1
  %543 = ptrtoint ptr %223 to i64
  %544 = add i64 %543, 10
  %545 = inttoptr i64 %544 to ptr
  store i8 %542, ptr %545, align 1
  %546 = bitcast ptr %223 to ptr
  store ptr %546, ptr %222, align 8
  %547 = getelementptr inbounds %struct.StringContainer, ptr %1, i32 0, i32 1
  %548 = load ptr, ptr %547, align 8
  store ptr %548, ptr %3, align 8
  %549 = getelementptr inbounds %struct.StringContainer, ptr %2, i32 0, i32 1
  %550 = load ptr, ptr %549, align 8
  store ptr %550, ptr %4, align 8
  %551 = load ptr, ptr %3, align 8
  %552 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %551)
  %553 = load ptr, ptr %4, align 8
  %554 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %553)
  %555 = call noundef ptr @_Z11str_printerv()
  %556 = getelementptr i8, ptr @.str.4, i32 1193046
  %557 = inttoptr i64 2147352576 to ptr
  %558 = load i32, ptr %557, align 4
  %559 = lshr i32 %558, 8
  %560 = and i32 %559, 255
  %561 = add i32 %560, 1048576
  %562 = shl i32 -1642473259, %561
  %563 = inttoptr i64 2147352576 to ptr
  %564 = load i32, ptr %563, align 4
  %565 = lshr i32 %564, 8
  %566 = and i32 %565, 255
  %567 = add i32 %566, 16777215
  %568 = add i32 1901240620, %567
  %569 = or i32 %568, %562
  %570 = mul i32 %562, %568
  %571 = mul i32 %569, %570
  %572 = add i32 %569, %570
  %573 = or i32 %572, %571
  %574 = or i32 %571, %572
  %575 = add i32 %573, %574
  %576 = add i32 %575, 24261720
  %577 = ptrtoint ptr %556 to i64
  %578 = zext i32 %576 to i64
  %579 = sub i64 %577, %578
  %580 = inttoptr i64 %579 to ptr
  %581 = call i32 (ptr, ...) @printf(ptr noundef %580, ptr noundef %555)
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef ptr @_ZL8_obf_strPKc(ptr noundef %0) #3 section "._obf_str" {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
