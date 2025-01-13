; ModuleID = './binaries/ir-output.ll'
source_filename = "./src/main.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
  %7 = xor i32 797206405, %6
  %8 = inttoptr i64 2147352576 to ptr
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = add i32 %11, 16777215
  %13 = add i32 2097859713, %12
  %14 = xor i32 %7, %13
  %15 = shl i32 %13, %7
  %16 = add i32 %15, %14
  %17 = sub i32 %14, %15
  %18 = sub i32 %16, %17
  %19 = lshr i32 %16, %17
  %20 = add i32 %18, %19
  %21 = add i32 %20, 2093437566
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
  %33 = lshr i32 -2025153828, %32
  %34 = inttoptr i64 2147352576 to ptr
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = add i32 %37, 16777215
  %39 = mul i32 -1879603969, %38
  %40 = add i32 %33, %39
  %41 = sub i32 %39, %33
  %42 = lshr i32 %41, %40
  %43 = xor i32 %40, %41
  %44 = xor i32 %43, -1
  %45 = shl i32 %42, %43
  %46 = lshr i32 %44, %45
  %47 = add i32 %46, 302066255
  %48 = ptrtoint ptr %27 to i64
  %49 = zext i32 %47 to i64
  %50 = sub i64 %48, %49
  %51 = inttoptr i64 %50 to ptr
  %52 = call noundef ptr @_ZL8_obf_strPKc(ptr noundef %51)
  ret ptr %52
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef ptr @_ZL8_obf_strPKc(ptr noundef %0) #2 section "._obf_str" {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #3 {
  %1 = alloca %struct.StringContainer, align 8
  %2 = alloca %struct.StringContainer, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.StringContainer, ptr %1, i32 0, i32 0
  store i32 300, ptr %5, align 8
  %6 = getelementptr inbounds %struct.StringContainer, ptr %1, i32 0, i32 1
  %7 = getelementptr i8, ptr @.str.2, i32 1193046
  %8 = inttoptr i64 2147352576 to ptr
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = add i32 %11, 1048576
  %13 = add i32 429001972, %12
  %14 = inttoptr i64 2147352576 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = add i32 %17, 16777215
  %19 = lshr i32 -1289868144, %18
  %20 = or i32 %19, %13
  %21 = add i32 %19, %13
  %22 = shl i32 %21, %20
  %23 = xor i32 %20, -1
  %24 = lshr i32 %23, %22
  %25 = sub i32 %22, %23
  %26 = xor i32 %25, -1
  %27 = add i32 %26, 431243596
  %28 = ptrtoint ptr %7 to i64
  %29 = zext i32 %27 to i64
  %30 = sub i64 %28, %29
  %31 = inttoptr i64 %30 to ptr
  %32 = call noundef ptr @_ZL8_obf_strPKc(ptr noundef %31)
  store ptr %32, ptr %6, align 8
  %33 = getelementptr inbounds %struct.StringContainer, ptr %2, i32 0, i32 0
  store i32 90000, ptr %33, align 8
  %34 = getelementptr inbounds %struct.StringContainer, ptr %2, i32 0, i32 1
  %35 = getelementptr i8, ptr @.str.3, i32 1193046
  %36 = inttoptr i64 2147352576 to ptr
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 8
  %39 = and i32 %38, 255
  %40 = add i32 %39, 1048576
  %41 = or i32 -962569324, %40
  %42 = inttoptr i64 2147352576 to ptr
  %43 = load i32, ptr %42, align 4
  %44 = lshr i32 %43, 8
  %45 = and i32 %44, 255
  %46 = add i32 %45, 16777215
  %47 = sub i32 -2086917787, %46
  %48 = mul i32 %47, %41
  %49 = mul i32 %47, %41
  %50 = shl i32 %48, %49
  %51 = shl i32 %49, %48
  %52 = xor i32 %51, %50
  %53 = xor i32 %51, -1
  %54 = or i32 %52, %53
  %55 = add i32 %54, 1193047
  %56 = ptrtoint ptr %35 to i64
  %57 = zext i32 %55 to i64
  %58 = sub i64 %56, %57
  %59 = inttoptr i64 %58 to ptr
  %60 = call noundef ptr @_ZL8_obf_strPKc(ptr noundef %59)
  store ptr %60, ptr %34, align 8
  %61 = getelementptr inbounds %struct.StringContainer, ptr %1, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8
  store ptr %62, ptr %3, align 8
  %63 = getelementptr inbounds %struct.StringContainer, ptr %2, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8
  store ptr %64, ptr %4, align 8
  %65 = load ptr, ptr %3, align 8
  %66 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %65)
  %67 = load ptr, ptr %4, align 8
  %68 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %67)
  %69 = call noundef ptr @_Z11str_printerv()
  %70 = getelementptr i8, ptr @.str.4, i32 1193046
  %71 = inttoptr i64 2147352576 to ptr
  %72 = load i32, ptr %71, align 4
  %73 = lshr i32 %72, 8
  %74 = and i32 %73, 255
  %75 = add i32 %74, 1048576
  %76 = add i32 -2126959454, %75
  %77 = inttoptr i64 2147352576 to ptr
  %78 = load i32, ptr %77, align 4
  %79 = lshr i32 %78, 8
  %80 = and i32 %79, 255
  %81 = add i32 %80, 16777215
  %82 = mul i32 161457069, %81
  %83 = lshr i32 %82, %76
  %84 = xor i32 %76, %82
  %85 = mul i32 %84, %83
  %86 = lshr i32 %84, %83
  %87 = or i32 %85, %86
  %88 = lshr i32 %85, %86
  %89 = or i32 %87, %88
  %90 = add i32 %89, -571948187
  %91 = ptrtoint ptr %70 to i64
  %92 = zext i32 %90 to i64
  %93 = sub i64 %91, %92
  %94 = inttoptr i64 %93 to ptr
  %95 = call i32 (ptr, ...) @printf(ptr noundef %94, ptr noundef %69)
  ret i32 0
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
