Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0459FB35A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Dec 2024 17:53:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65D8881327;
	Mon, 23 Dec 2024 16:53:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LrNLcshw0JE1; Mon, 23 Dec 2024 16:53:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8B258132A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734972785;
	bh=4XEfUiCWTdjfEDBb+3Klu13mqoKYsVj++5zC5UiO6l4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Wgw60GVXKErTrEsO3UVGeyi+moNSdZfZP7yeQcCIUQ00OD3m2hxT6wNtpM1LvAJEc
	 WIMg+VP+jPPzGiS8LiddbSyUxW4L9+f5qT56eoVITBlQb5L6QoycTv8/gByzn9jq9B
	 +NTTxZdzubJO5GZ4MQis9bq2hCCW1kZi/G8y+Prtm6ebHAWllNgFbUYcsQHCYB8s1w
	 NoMz/emclg7XDxcoSwbjJ8pGA8CH0eGhj9rnVXNYqnTq7tPpKTGyh4w28w9CrtwbDg
	 UGTPeoISllNtmPkMd9G9P2eP/O8xHarWL2Jfg9QpohhrZXjZBGXtyXG3RnTShkQm71
	 0Bb5KDj2b5ZDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8B258132A;
	Mon, 23 Dec 2024 16:53:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A51A55E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Dec 2024 23:55:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8832D4012A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Dec 2024 23:55:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DnpmbOZ0sc4P for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Dec 2024 23:55:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.166.208;
 helo=mail-il1-f208.google.com;
 envelope-from=36kzozwkbabsjpqb1cc5i1gg94.7ff7c5lj5i3fek5ek.3fd@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EB4D0400F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB4D0400F3
Received: from mail-il1-f208.google.com (mail-il1-f208.google.com
 [209.85.166.208])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EB4D0400F3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Dec 2024 23:55:21 +0000 (UTC)
Received: by mail-il1-f208.google.com with SMTP id
 e9e14a558f8ab-3a815ab079cso75343915ab.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Dec 2024 15:55:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734911721; x=1735516521;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=4XEfUiCWTdjfEDBb+3Klu13mqoKYsVj++5zC5UiO6l4=;
 b=UfVTzwTLzwHAsK+WFhJObC6scRYcb1cmzoyzehWDLuipDiRVEJtexyEtPZTIYTQ92T
 MhdbKHoQtZXpsEInsbwgv53R6Tyi0j0XYkk/viK4QUj2L+a5vz71LrKuZx/lU01xI7Q4
 5Vn9CRUA4j8kCtW/JgrGK4hC/YC+lHths11GPXVXgPA7RrPc9bsagy9qKd2yAdT9OLWc
 PMeYN1xlzNWBn6bHCBEn+1GkThzlugwbbDtrS4Iqo8WFbYyndTCZ/CCKXG/xHTdw4DBn
 gS063vaFI7gF8ICQMvgCqcGMVWB+k5pKpTQVVudZM4qXQEkSULM2NFZ9gvrZYVS2F1gE
 udzQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWqnDZ+U3elJlJ8ieXf484+6mwFPjIr4GOs0SxVnAvrwrJom7/ZiSUI6j/wWICOYdzoMvAt6xCBIuLQTMop6Js=@lists.osuosl.org
X-Gm-Message-State: AOJu0YweOy2xQpoknX7Q9UC5DIxd44Szxj4BAn9t94805Wz4wK8JDq1T
 STDKLlU7ZchHpw6WOoyL66wx/E4FX3d7LXIG4krKG6TXKNcmqAB9ZdA7XuTv0yzgkBwry9nJz0e
 UxeE4iFI93085zwIJwygQhnpWn/deTgMlomqyIpJPe+a5+rbz5UcGaxo=
X-Google-Smtp-Source: AGHT+IGCGcvwSUusj5gvGzq2GbdCO+sZdqqOlFIpC7HjMzw99X8rDSDme5f5SQnOH/5EKrbwIZfzXGCofVWCV3mMSlhZsJaBVIog
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1a2c:b0:3a7:6f5a:e5c7 with SMTP id
 e9e14a558f8ab-3c2d14d23d2mr88935825ab.4.1734911720791; Sun, 22 Dec 2024
 15:55:20 -0800 (PST)
Date: Sun, 22 Dec 2024 15:55:20 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6768a6e8.050a0220.2f3838.000f.GAE@google.com>
From: syzbot <syzbot+1bd718f8eea824d2d157@syzkaller.appspotmail.com>
To: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net, 
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, pabeni@redhat.com, 
 przemyslaw.kitszel@intel.com, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 23 Dec 2024 16:53:02 +0000
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=syzkaller.appspotmail.com
Subject: [Intel-wired-lan] [syzbot] [intel-wired-lan?] WARNING in
 e1000_rx_checksum
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,

syzbot found the following issue on:

HEAD commit:    c061cf420ded Merge tag 'trace-v6.13-rc3' of git://git.kern..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=14dfc2df980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4f1586bab1323870
dashboard link: https://syzkaller.appspot.com/bug?extid=1bd718f8eea824d2d157
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7feb34a89c2a/non_bootable_disk-c061cf42.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/ac4941665683/vmlinux-c061cf42.xz
kernel image: https://storage.googleapis.com/syzbot-assets/7d5addcac95a/bzImage-c061cf42.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+1bd718f8eea824d2d157@syzkaller.appspotmail.com

------------[ cut here ]------------
WARNING: CPU: 1 PID: 29 at ./include/linux/skbuff.h:5126 skb_checksum_none_assert include/linux/skbuff.h:5126 [inline]
WARNING: CPU: 1 PID: 29 at ./include/linux/skbuff.h:5126 e1000_rx_checksum.constprop.0+0x176/0x1e0 drivers/net/ethernet/intel/e1000/e1000_main.c:3954
Modules linked in:
CPU: 1 UID: 0 PID: 29 Comm: ksoftirqd/1 Not tainted 6.13.0-rc3-syzkaller-00062-gc061cf420ded #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
RIP: 0010:skb_checksum_none_assert include/linux/skbuff.h:5126 [inline]
RIP: 0010:e1000_rx_checksum.constprop.0+0x176/0x1e0 drivers/net/ethernet/intel/e1000/e1000_main.c:3954
Code: 00 00 00 00 fc ff df 80 3c 02 00 75 76 48 83 85 b0 04 00 00 01 5b 5d 41 5c 41 5d 41 5e 41 5f e9 20 7b 3b fb e8 1b 7b 3b fb 90 <0f> 0b 90 e9 e7 fe ff ff e8 0d 7b 3b fb 48 8d bd a8 04 00 00 48 b8
RSP: 0018:ffffc900006878e0 EFLAGS: 00010246
RAX: 0000000000000000 RBX: 0000000000000007 RCX: ffffffff865e991c
RDX: ffff88801deb8000 RSI: ffffffff865e9a35 RDI: 0000000000000001
RBP: ffff888108168d80 R08: 0000000000000001 R09: 0000000000000000
R10: 0000000000000020 R11: 0000000000000000 R12: ffff88805120a140
R13: 0000000000000020 R14: ffff88805120a1c0 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff88806a700000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007ffdcc27d098 CR3: 0000000046c5e000 CR4: 0000000000352ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 e1000_clean_jumbo_rx_irq+0xf3e/0x28c0 drivers/net/ethernet/intel/e1000/e1000_main.c:4275
 e1000_clean+0x9d6/0x2700 drivers/net/ethernet/intel/e1000/e1000_main.c:3807
 __napi_poll.constprop.0+0xb7/0x550 net/core/dev.c:6883
 napi_poll net/core/dev.c:6952 [inline]
 net_rx_action+0xa94/0x1010 net/core/dev.c:7074
 handle_softirqs+0x213/0x8f0 kernel/softirq.c:561
 run_ksoftirqd kernel/softirq.c:950 [inline]
 run_ksoftirqd+0x3a/0x60 kernel/softirq.c:942
 smpboot_thread_fn+0x661/0xa30 kernel/smpboot.c:164
 kthread+0x2c1/0x3a0 kernel/kthread.c:389
 ret_from_fork+0x45/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want to overwrite report's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the report is a duplicate of another one, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup
