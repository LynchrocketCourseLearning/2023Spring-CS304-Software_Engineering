import subprocess

git_log = subprocess.check_output(['git', 'log', '--pretty=%s'])
git_log_str = git_log.decode('utf-8')

commit_total = git_log_str.count('\n')
commit_with_message = 0
for message  in git_log_str.split('\n'):
    if message !='':
        commit_with_message+=1

commit_with_message_ratio = commit_with_message / commit_total * 100


commit_messages = git_log_str.split('\n')
total_word_length = sum([len(message.split()) for message in commit_messages])
average_word_length = total_word_length / commit_total


bug_fix_messages = [message for message in commit_messages if 'bug' in message.lower() or 'defect' in message.lower() or 'fix' in message.lower()]
bug_fix_ratio = len(bug_fix_messages) / commit_total * 100


merge_messages = [message for message in commit_messages if 'merge' in message.lower()]
merge_ratio = len(merge_messages) / commit_total * 100

print('Percentage of commits: {:.2f}%'.format(commit_with_message_ratio))
print('The average length: {:.2f}'.format(average_word_length))
print('Bug fix: {:.2f}%'.format(bug_fix_ratio))
print('Percentage of merge: {:.2f}%'.format(merge_ratio))