package main

import (
	"github.com/charmbracelet/log"
	"github.com/spf13/cobra"
	"os"
)

func main() {
	var inputFilePath string

	var cmd = &cobra.Command{
		Use:   "llvm-source-slicer",
		Short: "A tool to slice LLVM IR by basic blocks and get the corresponding source code snippets",
		Run: func(cmd *cobra.Command, args []string) {
			log.Infof("Input file %s\n", inputFilePath)
		},
	}

	cmd.Flags().StringVarP(&inputFilePath,
		"input", "i", "",
		"Path to LLVM IR file (required)")
	argError := cmd.MarkFlagRequired("input")
	if argError != nil {
		log.Error(argError.Error())
	}

	execError := cmd.Execute()

	if execError != nil {
		log.Fatal(execError)
		os.Exit(1)
	}

	// module, err := irparser.ParseFile(inputFilePath)
	// if err != nil {
	// 	log.Fatal(err)
	// }

	// debugData, err := debuginfo.ExtractDebugInfo(module)
	// if err != nil {
	// 	log.Fatal(err)
	// }

	// slicedIR, err := slicer.SliceIR(module, debugData)
	// if err != nil {
	// 	log.Fatal(err)
	// }

	// Continue with handling the sliced IR...
}
