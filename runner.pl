use File::Basename;
use strict;
use warnings;
use utf8;
use File::Find;
use File::Spec;
use Cwd;

binmode(STDOUT, ":encoding(UTF-8)");
binmode(STDERR, ":encoding(UTF-8)");

my $root = Cwd::getcwd();
my %folder_with_scripts;

# 하위 폴더 중 .pl 파일 있는 폴더만 선택
opendir my $dh, $root or die "Cannot open root folder: $!";
my @subfolders = grep { -d File::Spec->catdir($root, $_) && !/^\.{1,2}$/ } readdir($dh);
closedir $dh;

for my $f (@subfolders) {
    my $full_path = File::Spec->catdir($root, $f);
    my $has_script = 0;
    find(sub {
        $has_script = 1 if /\.pl$/ && -f $_;
    }, $full_path);
    $folder_with_scripts{$f} = $full_path if $has_script;
}

die "No folders with scripts found\n" unless keys %folder_with_scripts;

# 폴더 선택
print "Select a folder:\n";
my @keys = keys %folder_with_scripts;
for my $i (0..$#keys) {
    print "[".($i+1)."] $keys[$i]\n";
}
print "Enter number: ";
chomp(my $choice = <STDIN>);
die "Invalid choice\n" unless $choice =~ /^\d+$/ && $choice >= 1 && $choice <= @keys;

my $selected_folder = $folder_with_scripts{$keys[$choice-1]};
print "Selected folder: $keys[$choice-1]\n";

# 선택한 폴더 내 .pl 파일만 가져오기
my @scripts;
find(sub {
    push @scripts, $File::Find::name if /\.pl$/ && -f $_;
}, $selected_folder);

die "No scripts found in folder\n" unless @scripts;

# 스크립트 선택
print "\nSelect a script to run:\n";
for my $i (0..$#scripts) {
    my $short = $scripts[$i];
    $short =~ s/^\Q$selected_folder\E[\\\/]?//;
    print "[".($i+1)."] $short\n";
}
print "Enter number: ";
chomp(my $script_choice = <STDIN>);
die "Invalid choice\n" unless $script_choice =~ /^\d+$/ && $script_choice >= 1 && $script_choice <= @scripts;

my $script_to_run = $scripts[$script_choice-1];
print "\nRunning: $script_to_run\n";

my $output = `perl -CS "$script_to_run" 2>&1`;

# 결과 저장 (UTF-8 + BOM)
use open ':std', ':encoding(UTF-8)';
my ($name, $path, $suffix) = fileparse($script_to_run, qr/\.[^.]*/);
my $result_file = File::Spec->catfile($path, "$name-result.txt");
open my $fh, '>:encoding(UTF-8)', $result_file or die "Cannot open $result_file: $!";
print $fh "\x{FEFF}";  # BOM 추가
print $fh $output;
close $fh;

print "Output saved to $result_file\n";
print "Script output:\n";
print $output;
