package main

import (
	"net/http"
)

func NewServer(addr string) (*http.Server) {
	server := http.Server{
		Addr: addr,		
	}
	return &server
}
