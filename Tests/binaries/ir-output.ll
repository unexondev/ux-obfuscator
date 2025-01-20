; ModuleID = './src/main.cpp'
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
  %1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %2 = call noundef ptr @_ZL8_obf_strPKc(ptr noundef @.str.1)
  ret ptr %2
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
  %7 = call noundef ptr @_ZL8_obf_strPKc(ptr noundef @.str.2)
  store ptr %7, ptr %6, align 8
  %8 = getelementptr inbounds %struct.StringContainer, ptr %2, i32 0, i32 0
  store i32 90000, ptr %8, align 8
  %9 = getelementptr inbounds %struct.StringContainer, ptr %2, i32 0, i32 1
  %10 = call noundef ptr @_ZL8_obf_strPKc(ptr noundef @.str.3)
  store ptr %10, ptr %9, align 8
  %11 = getelementptr inbounds %struct.StringContainer, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %3, align 8
  %13 = getelementptr inbounds %struct.StringContainer, ptr %2, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %4, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %15)
  %17 = load ptr, ptr %4, align 8
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %17)
  %19 = call noundef ptr @_Z11str_printerv()
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %19)
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
