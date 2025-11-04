Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAB6C32011
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 17:18:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A6AA40C86;
	Tue,  4 Nov 2025 16:18:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8inq_058pWx8; Tue,  4 Nov 2025 16:18:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 675FC40C8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762273099;
	bh=qFICcE+Vtbf0TwZWSrWoxdS8zOuWh2Ntsa14GnmIyDk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xnRPPPru02zaka7Op/u7OfK+pVlkVGSDv+gQ1MDp5fkgWvJTvhA62LwVhQ8k3fqlQ
	 hxSeLBKcXPea77P3FCIM8FMNYusCerSh3mUysMnpJjYENBPaDPn2MxibkJDbP8ebnn
	 vUs4x9/z5OKtFVK126l0YStrJcjlyTk3XXPDHB66rSRQ2kw9gEGpY8WsZvP6DoVepw
	 1ncd28TJeW9Pk1cEwANAJJq4RWBPFyUQ46AKuS9gnhlYa0Fx1AFfN7SH7B+WSAwdho
	 wHFofdmuN0Op+2nogdPVlXy6tooCMAm9ql3DqSpU6yXh0KdfkumZTuRmHWX0LbU9GT
	 7Q0d2mprlwC8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 675FC40C8C;
	Tue,  4 Nov 2025 16:18:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 81CE1278
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 08:28:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6836D40C7E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 08:28:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cLBnui78np2a for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 08:28:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1036; helo=mail-pj1-x1036.google.com;
 envelope-from=lgs201920130244@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AD02F40C7C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD02F40C7C
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AD02F40C7C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 08:28:11 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 98e67ed59e1d1-33db8fde85cso5129786a91.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 04 Nov 2025 00:28:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762244891; x=1762849691;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=qFICcE+Vtbf0TwZWSrWoxdS8zOuWh2Ntsa14GnmIyDk=;
 b=iivPyRYJO6kseBFEuRip10NHXy9+oTrS0QxXAKzzm7OVv8RttC87TV/wNrlLDbBw29
 xLirEawNzVnrlqWT0ybviDnUAob8T7CPt2TtikFw53VIzSMuKftKNaxHBd1xEuX81mvM
 UQRFYP7FEVGb3dBYA591rd6szan2EOngYyYpFLC0uQDL3bH2JExFvYHyhQnT4FNYb3e5
 C0qV7hdybPbIDRozr9d99D9QYGZmNmxCK8Y9kzuxAytjEAMEB9czMgGMNMqkzmGAFqgL
 PjoniklrEfg5aGTfRQKNd4xeaNV2fJ3k3Ws+YFSEzOHEa2fFdjTVuqod5ljX4npBq+dG
 aBIg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU4I7AVpbOMVfe7/qfP4ah/zflZFwni+NrWfwQL6dNtsvBdM64qmeRYTm0DJH119tKvZbSrkLjOwqkrDTnlSA8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyHUx6YHMe5oFaesg265MO4+KPhyO8+yMdCYo6YWWXQHk4nSyym
 /US8OTaDNhPuMtbNpH5CBq0afRyT4EMlXioc0E7fzDvVM8bBsP/e4erK
X-Gm-Gg: ASbGnctp6iKtW3G/4wlEOiRaHf/yqBs3dtsvkXSulkj43SLVKCgXrYSkySrYW0pg5cA
 +PR8Qr9I7MFgTmrUWrRZQQCgSM2LC0/TrvPwr1di8EKYVaJ514XOLdzSDE5nj/SQ2GRTP/38H99
 Mf8ctb41XhRc2e6f1ejdDRsHcpoM1p2jkaE9YMiR1iHsIlwBaNf8CTW4e5FbCkZWW++X5EffLXM
 vTWvaty3+4glYcsy7cXJr257xUuiT9rUdeYbFGttOK9dIjVRL6KfgdsuUc/kq+bV1i56QJxE0mv
 NvPjoMtoF3KUN/0zZhxuIcySAtt7ypchRqlhAMIB3Djvd32e3FjyzpOO1qO/Tdv2bf3FNAs20Oc
 Y6iSgj1aoSzhXif+qVw3dcEmu7aDqs/94OhPQWGuPoIZ7wHMky2O1YwUGnjj4wF/Pd5Jb
X-Google-Smtp-Source: AGHT+IGVUulaM8PgxdpqWXbaXLvoTSxC4FBTiFBtCJmYm4R/u5Kqq0KGBrKf+VchkH7vBPb6AjB/0w==
X-Received: by 2002:a17:90b:1a8b:b0:339:cece:a99 with SMTP id
 98e67ed59e1d1-34082fc2ca5mr19922869a91.13.1762244890765; 
 Tue, 04 Nov 2025 00:28:10 -0800 (PST)
Received: from lgs.. ([172.81.120.170]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3415c8b78f8sm3661514a91.20.2025.11.04.00.28.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Nov 2025 00:28:10 -0800 (PST)
From: Guangshuo Li <lgs201920130244@gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Florian Westphal <fw@strlen.de>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Guangshuo Li <lgs201920130244@gmail.com>,
	stable@vger.kernel.org
Date: Tue,  4 Nov 2025 16:28:01 +0800
Message-ID: <20251104082801.994195-1-lgs201920130244@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 04 Nov 2025 16:18:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762244891; x=1762849691; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=qFICcE+Vtbf0TwZWSrWoxdS8zOuWh2Ntsa14GnmIyDk=;
 b=ergodSVl841rXp8ocqIk2m66R8nUYBBD6oLbKRjea3uq0c+jPbNpxdQl23v2SmGrHv
 F26+xxQ8qUbTJ+3vRT9XloiT0C9oRPrbCSBu31fu9BFQth9tfUwglnnE7adn8uim1MP1
 ktPj0OyaBdPwhEiXAqTQyqWHZCSuj7oWD9YmOh9IY+dToAGdFnm6W9sMuJif9Al7rteW
 iTOVgqPbLiwf5bsnFKyeFmLP1QWj+mqE3k7xnhFaEMXuwwbcN0aLrWmYFKt/yv0SiazH
 bh5SY7KiUC00JiKLrq3trZDxKL+Ruzgp/maPPdUMzY/B/dVGVZaVsyj9HqNwrIw/pdBo
 xyLw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=ergodSVl
Subject: [Intel-wired-lan] [PATCH] e1000: fix OOB in
 e1000_tbi_should_accept()
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

In e1000_tbi_should_accept() we read the last byte of the frame via
'data[length - 1]' to evaluate the TBI workaround. If the descriptor-
reported length is zero or larger than the actual RX buffer size, this
read goes out of bounds and can hit unrelated slab objects. The issue
is observed from the NAPI receive path (e1000_clean_rx_irq):

==================================================================
BUG: KASAN: slab-out-of-bounds in e1000_tbi_should_accept+0x610/0x790
Read of size 1 at addr ffff888014114e54 by task sshd/363

CPU: 0 PID: 363 Comm: sshd Not tainted 5.18.0-rc1 #1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.12.0-59-gc9ba5276e321-prebuilt.qemu.org 04/01/2014
Call Trace:
 <IRQ>
 dump_stack_lvl+0x5a/0x74
 print_address_description+0x7b/0x440
 print_report+0x101/0x200
 kasan_report+0xc1/0xf0
 e1000_tbi_should_accept+0x610/0x790
 e1000_clean_rx_irq+0xa8c/0x1110
 e1000_clean+0xde2/0x3c10
 __napi_poll+0x98/0x380
 net_rx_action+0x491/0xa20
 __do_softirq+0x2c9/0x61d
 do_softirq+0xd1/0x120
 </IRQ>
 <TASK>
 __local_bh_enable_ip+0xfe/0x130
 ip_finish_output2+0x7d5/0xb00
 __ip_queue_xmit+0xe24/0x1ab0
 __tcp_transmit_skb+0x1bcb/0x3340
 tcp_write_xmit+0x175d/0x6bd0
 __tcp_push_pending_frames+0x7b/0x280
 tcp_sendmsg_locked+0x2e4f/0x32d0
 tcp_sendmsg+0x24/0x40
 sock_write_iter+0x322/0x430
 vfs_write+0x56c/0xa60
 ksys_write+0xd1/0x190
 do_syscall_64+0x43/0x90
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7f511b476b10
Code: 73 01 c3 48 8b 0d 88 d3 2b 00 f7 d8 64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 83 3d f9 2b 2c 00 00 75 10 b8 01 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 31 c3 48 83 ec 08 e8 8e 9b 01 00 48 89 04 24
RSP: 002b:00007ffc9211d4e8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 0000000000004024 RCX: 00007f511b476b10
RDX: 0000000000004024 RSI: 0000559a9385962c RDI: 0000000000000003
RBP: 0000559a9383a400 R08: fffffffffffffff0 R09: 0000000000004f00
R10: 0000000000000070 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffc9211d57f R14: 0000559a9347bde7 R15: 0000000000000003
 </TASK>
Allocated by task 1:
 __kasan_krealloc+0x131/0x1c0
 krealloc+0x90/0xc0
 add_sysfs_param+0xcb/0x8a0
 kernel_add_sysfs_param+0x81/0xd4
 param_sysfs_builtin+0x138/0x1a6
 param_sysfs_init+0x57/0x5b
 do_one_initcall+0x104/0x250
 do_initcall_level+0x102/0x132
 do_initcalls+0x46/0x74
 kernel_init_freeable+0x28f/0x393
 kernel_init+0x14/0x1a0
 ret_from_fork+0x22/0x30
The buggy address belongs to the object at ffff888014114000
 which belongs to the cache kmalloc-2k of size 2048
The buggy address is located 1620 bytes to the right of
 2048-byte region [ffff888014114000, ffff888014114800]
The buggy address belongs to the physical page:
page:ffffea0000504400 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x14110
head:ffffea0000504400 order:3 compound_mapcount:0 compound_pincount:0
flags: 0x100000000010200(slab|head|node=0|zone=1)
raw: 0100000000010200 0000000000000000 dead000000000001 ffff888013442000
raw: 0000000000000000 0000000000080008 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected
==================================================================

This happens because the TBI check unconditionally dereferences the last
byte without validating the reported length first:

	u8 last_byte = *(data + length - 1);

Fix by rejecting the frame early if the length is zero, or if it exceeds
adapter->rx_buffer_len. This preserves the TBI workaround semantics for
valid frames and prevents touching memory beyond the RX buffer.

Fixes: 2037110c96d5 ("e1000: move tbi workaround code into helper function")
Cc: stable@vger.kernel.org
Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 3f5feb55cfba..2d2ed5e2c3c8 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -4090,6 +4090,12 @@ static bool e1000_tbi_should_accept(struct e1000_adapter *adapter,
 				    u8 status, u8 errors,
 				    u32 length, const u8 *data)
 {
+	/* Guard against OOB on data[length - 1] */
+	if (unlikely(!length))
+		return false;
+	/* Upper bound: length must not exceed rx_buffer_len */
+	if (unlikely(length > adapter->rx_buffer_len))
+		return false;
 	struct e1000_hw *hw = &adapter->hw;
 	u8 last_byte = *(data + length - 1);
 
-- 
2.43.0

