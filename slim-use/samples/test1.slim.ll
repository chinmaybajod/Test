; ModuleID = './samples/test1.ll'
source_filename = "./samples/test1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !10 {
entry:
  call void @llvm.dbg.value(metadata i32 5, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i32 9, metadata !18, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i32 5, metadata !19, metadata !DIExpression()), !dbg !17
  %add = add nsw i32 5, 5, !dbg !20
  %cmp = icmp slt i32 %add, 9, !dbg !22
  br i1 %cmp, label %if.then, label %if.else, !dbg !23

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 5, metadata !16, metadata !DIExpression()), !dbg !17
  br label %if.end, !dbg !24

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 5, metadata !18, metadata !DIExpression()), !dbg !17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %b.0 = phi i32 [ 9, %if.then ], [ 5, %if.else ], !dbg !17
  call void @llvm.dbg.value(metadata i32 %b.0, metadata !18, metadata !DIExpression()), !dbg !17
  %add1 = add nsw i32 %b.0, 5, !dbg !26
  call void @llvm.dbg.value(metadata i32 %add1, metadata !16, metadata !DIExpression()), !dbg !17
  ret i32 %add1, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "samples/test1.c", directory: "/home/jarvis/ACC/slim-use", checksumkind: CSK_MD5, checksum: "fcd723db82847accdb3d6d76f45060da")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 1, type: !12, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!11 = !DIFile(filename: "./samples/test1.c", directory: "/home/jarvis/ACC/slim-use", checksumkind: CSK_MD5, checksum: "fcd723db82847accdb3d6d76f45060da")
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "a", scope: !10, file: !11, line: 2, type: !14)
!17 = !DILocation(line: 0, scope: !10)
!18 = !DILocalVariable(name: "b", scope: !10, file: !11, line: 3, type: !14)
!19 = !DILocalVariable(name: "c", scope: !10, file: !11, line: 4, type: !14)
!20 = !DILocation(line: 5, column: 6, scope: !21)
!21 = distinct !DILexicalBlock(scope: !10, file: !11, line: 5, column: 5)
!22 = !DILocation(line: 5, column: 9, scope: !21)
!23 = !DILocation(line: 5, column: 5, scope: !10)
!24 = !DILocation(line: 7, column: 2, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !11, line: 5, column: 14)
!26 = !DILocation(line: 10, column: 7, scope: !10)
!27 = !DILocation(line: 11, column: 2, scope: !10)
