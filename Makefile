ARCHIVE = go-junit-report_linux_amd64.tar.xz

build-linux:
	GOOS=linux GOARCH=amd64 go build -o go-junit-report

pack-dist: build-linux
	rm -rf $(ARCHIVE)
	tar cf $(ARCHIVE) go-junit-report
