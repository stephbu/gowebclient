package main

import "fmt"
import "time"
import "github.com/stephbu/gowebclient/logger"

func main() {

	//defer log.Flush()
	err := logger.InitLogger()

	if err != nil {
		fmt.Printf("Could not initialize logger: %+v", err)
	}

	for {
		fmt.Printf("Tick")
		time.Sleep(5 * time.Second)
	}
}
