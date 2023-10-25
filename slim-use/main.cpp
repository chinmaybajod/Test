#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Instructions.h"
#include <bits/stdc++.h>
#include <cxxabi.h>
#include "llvm/IR/Module.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/ADT/BitVector.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Verifier.h"
#include "llvm/ADT/Optional.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Analysis/MemorySSA.h"
#include <string>
#include <memory>
#include "slim/IR.h"
#include "IR.h"

using namespace llvm;

static llvm::LLVMContext context;



int main(int argc, char *argv[]) {
    if (argc < 2 || argc > 2) {
        llvm::errs() << "We expect exactly one argument - the name of the LLVM IR file!\n";
        exit(1);
    }

    llvm::SMDiagnostic smDiagnostic;
    std::unique_ptr<llvm::Module> module = parseIRFile(argv[1], smDiagnostic, context);
    slim::IR *transformIR = new slim::IR(module);

    transformIR->dumpIR();

    
    return 0;
}

