# Go tests
def test_if_go_exists(host):
    assert host.exists("/home/linuxbrew/.linuxbrew/bin/go")
    assert host.run("/home/linuxbrew/.linuxbrew/bin/go version").stdout.startswith('go version go1.16')

def test_go_src_exists(host):
    folder_base_path = "/home/linuxbrew/go/"
    go_folders = ["src", "bin", "pkg"]
    for folder in go_folders:
        test_folder = host.file(folder_base_path + folder)
        assert test_folder.is_directory
        assert test_folder.exists
        assert test_folder.user == "linuxbrew"
