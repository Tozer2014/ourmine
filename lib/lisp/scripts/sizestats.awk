BEGIN {
	Filename
	Classes ? Classes : 2
	main()
	cntr
}

function main() {
	while (getline < Filename) {
		if ($0 !~ /^[ ]./)
			Size++
	}
	close(Filename)
	while (getline < Filename) {
		if ($0 !~ /^[ ]./ && $2 != 0) {			
			SetSize = $2
			SetSum += SetSize
			RowNum++
			Cntr++
			if(Cntr >= int(Size/50)) {
				Cntr = 0
				print RowNum" "(SetSum / RowNum)" "SetSize
			}
		}
	}
}
