; ModuleID = './binaries/ir-output.ll'
source_filename = "./src/main.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.StringContainer = type { i32, ptr }

@.str = private unnamed_addr constant [29 x i8] c"Gonna let str_printer talk!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"str_printer: hello world!\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"warevisor\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"warevising\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z11str_printerv() #0 {
  %1 = inttoptr i64 2147352576 to ptr
  %2 = load i32, ptr %1, align 4
  %3 = lshr i32 %2, 8
  %4 = and i32 %3, 255
  %5 = add i32 %4, 1048576
  %6 = shl i32 -1009132466, %5
  %7 = inttoptr i64 2147352576 to ptr
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 8
  %10 = and i32 %9, 255
  %11 = add i32 %10, 16777215
  %12 = or i32 -1553599757, %11
  %13 = shl i32 %6, %12
  %14 = sub i32 %12, %6
  %15 = lshr i32 %14, %13
  %16 = lshr i32 %14, %13
  %17 = mul i32 %16, %15
  %18 = add i32 %15, %16
  %19 = xor i32 %17, %18
  %20 = add i32 %19, 1648921939
  %21 = ptrtoint ptr getelementptr inbounds (i8, ptr @.str, i32 1193046) to i64
  %22 = zext i32 %20 to i64
  %23 = sub i64 %21, %22
  %24 = inttoptr i64 %23 to ptr
  %25 = call i32 (ptr, ...) @printf(ptr noundef %24)
  %26 = inttoptr i64 2147352576 to ptr
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 8
  %29 = and i32 %28, 255
  %30 = add i32 %29, 1048576
  %31 = sub i32 279295707, %30
  %32 = inttoptr i64 2147352576 to ptr
  %33 = load i32, ptr %32, align 4
  %34 = lshr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = add i32 %35, 16777215
  %37 = mul i32 -687222595, %36
  %38 = lshr i32 %31, %37
  %39 = xor i32 %31, %37
  %40 = mul i32 %38, %39
  %41 = mul i32 %39, %38
  %42 = or i32 %40, %41
  %43 = sub i32 %40, %41
  %44 = lshr i32 %42, %43
  %45 = add i32 %44, 1207680846
  %46 = ptrtoint ptr getelementptr inbounds (i8, ptr @.str.1, i32 1193046) to i64
  %47 = zext i32 %45 to i64
  %48 = sub i64 %46, %47
  %49 = inttoptr i64 %48 to ptr
  %50 = call noundef ptr @_ZL8_obf_strPKc(ptr noundef %49)
  ret ptr %50
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
  %7 = inttoptr i64 2147352576 to ptr
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 8
  %10 = and i32 %9, 255
  %11 = add i32 %10, 1048576
  %12 = xor i32 1965766583, %11
  %13 = inttoptr i64 2147352576 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 8
  %16 = and i32 %15, 255
  %17 = add i32 %16, 16777215
  %18 = or i32 454296478, %17
  %19 = or i32 %18, %12
  %20 = lshr i32 %12, %18
  %21 = add i32 %20, %19
  %22 = mul i32 %19, %20
  %23 = mul i32 %21, %22
  %24 = shl i32 %21, %22
  %25 = add i32 %24, %23
  %26 = add i32 %25, -2146290601
  %27 = ptrtoint ptr getelementptr inbounds (i8, ptr @.str.2, i32 1193046) to i64
  %28 = zext i32 %26 to i64
  %29 = sub i64 %27, %28
  %30 = inttoptr i64 %29 to ptr
  %31 = call noundef ptr @_ZL8_obf_strPKc(ptr noundef %30)
  store ptr %31, ptr %6, align 8
  %32 = getelementptr inbounds %struct.StringContainer, ptr %2, i32 0, i32 0
  store i32 90000, ptr %32, align 8
  %33 = getelementptr inbounds %struct.StringContainer, ptr %2, i32 0, i32 1
  %34 = inttoptr i64 2147352576 to ptr
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = add i32 %37, 1048576
  %39 = or i32 1171364311, %38
  %40 = inttoptr i64 2147352576 to ptr
  %41 = load i32, ptr %40, align 4
  %42 = lshr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = add i32 %43, 16777215
  %45 = sub i32 -1887779662, %44
  %46 = lshr i32 %45, %39
  %47 = sub i32 %39, %45
  %48 = shl i32 %47, %46
  %49 = xor i32 %46, %47
  %50 = mul i32 %49, %48
  %51 = or i32 %48, %49
  %52 = add i32 %50, %51
  %53 = add i32 %52, 146497566
  %54 = ptrtoint ptr getelementptr inbounds (i8, ptr @.str.3, i32 1193046) to i64
  %55 = zext i32 %53 to i64
  %56 = sub i64 %54, %55
  %57 = inttoptr i64 %56 to ptr
  %58 = call noundef ptr @_ZL8_obf_strPKc(ptr noundef %57)
  store ptr %58, ptr %33, align 8
  %59 = getelementptr inbounds %struct.StringContainer, ptr %1, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8
  store ptr %60, ptr %3, align 8
  %61 = getelementptr inbounds %struct.StringContainer, ptr %2, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8
  store ptr %62, ptr %4, align 8
  %63 = load ptr, ptr %3, align 8
  %64 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %63)
  %65 = load ptr, ptr %4, align 8
  %66 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %65)
  %67 = call noundef ptr @_Z11str_printerv()
  %68 = inttoptr i64 2147352576 to ptr
  %69 = load i32, ptr %68, align 4
  %70 = lshr i32 %69, 8
  %71 = and i32 %70, 255
  %72 = add i32 %71, 1048576
  %73 = sub i32 1335570714, %72
  %74 = inttoptr i64 2147352576 to ptr
  %75 = load i32, ptr %74, align 4
  %76 = lshr i32 %75, 8
  %77 = and i32 %76, 255
  %78 = add i32 %77, 16777215
  %79 = add i32 1175101378, %78
  %80 = xor i32 %73, %79
  %81 = sub i32 %73, %79
  %82 = xor i32 %80, -1
  %83 = xor i32 %80, -1
  %84 = sub i32 %83, %82
  %85 = lshr i32 %82, %83
  %86 = xor i32 %84, -1
  %87 = add i32 %86, 1193047
  %88 = ptrtoint ptr getelementptr inbounds (i8, ptr @.str.4, i32 1193046) to i64
  %89 = zext i32 %87 to i64
  %90 = sub i64 %88, %89
  %91 = inttoptr i64 %90 to ptr
  %92 = call i32 (ptr, ...) @printf(ptr noundef %91, ptr noundef %67)
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
!5 = !{!"clang version 18.0.0 (https://github.com/llvm/llvm-project.git e8f3ccd2737c638fafae7c5bf13cd2e913ef0f86)"}
