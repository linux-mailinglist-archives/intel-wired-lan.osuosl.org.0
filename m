Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2mhLM5cOt2l3MAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Mar 2026 20:55:03 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1DD29245B
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Mar 2026 20:55:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10D4141215;
	Sun, 15 Mar 2026 19:55:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9is4S6h6B7xT; Sun, 15 Mar 2026 19:54:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D555F4126E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773604498;
	bh=TgTrLe/JoMHZzSj3LERU0C8U6M6CzzBWVT+2A/bduZ4=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PTnZaKo/l3z91kq35nt0xpKdDojkbERXbHLfB08VvOnbM5rp0upWPUFY9w3hLtnpu
	 EmH2EzyyuMUQhxgrUVDc0XbptJOwISFr6zLTDmpYe+oKwDq5DRj9oJL8GChS67r+KX
	 5FQ0pVWeXD5MtcSl1CiX5F9B7Anq9tN+KY2KNIjKELWLMucheyjnTwWNT36z7AAVx6
	 dVBRXq0Z/zmdbKTjbixPKVP08fQ+RyIH63iH0TovrDvCOqHHNZqb1HuoYkuPLivPDa
	 TnCf6oOe8TpzgwiT489WMZWMxp2T+CnTFmVS0oStCvuMPLPZcO2kS01S+bLj9i58Om
	 0dRukPEVhYdIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D555F4126E;
	Sun, 15 Mar 2026 19:54:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B23611B4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 19:54:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9F55E41215
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 19:54:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jy8QcYDc1Zz1 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Mar 2026 19:54:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9831D41208
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9831D41208
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9831D41208
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 19:54:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 9DCCA60008;
 Sun, 15 Mar 2026 19:54:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5109C4CEF7;
 Sun, 15 Mar 2026 19:54:52 +0000 (UTC)
Date: Sun, 15 Mar 2026 12:54:51 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: intel-wired-lan@lists.osuosl.org, michal.swiatkowski@linux.intel.com
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 jacob.e.keller@intel.com, anthony.l.nguyen@intel.com
Message-ID: <20260315125451.3741843c@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773604493;
 bh=xO70kpXtzZLsUx94PATsskhW939W15NIv5cuuCMEZ2Q=;
 h=Date:From:To:Cc:Subject:From;
 b=PV3kx0wBPgxOZg02MReUnOKo5Ce/jny4jzHVRLwhNXfuqGvm8vapm95KJVm1PsCM3
 tzNZmJum+CMxA4skw9YM/OG1NZFn7FiRcVDXblrsjXpX9yJ+LTWPwLtcilCnl9B+tj
 mK9I8sLLtjbzm0zIuWL3AJNjIZD8FHr8BsWrM6iHeJH3XG/tS/+sOxUf/uEz7fFW+c
 QuS1hrSMkr0piJqqHvLkAwmFAdlY5F8zsZOtIWB4CirLqDsgiJXSUgo8h8JDlJF4Yh
 kYIfYnK5aeK1do6xQUBX7hYS1A0bMqnEHpDM/w25AjB6SI7Dbx/M0bLmSsvcxQK2Ra
 SM4Y4hUb7OV0A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=PV3kx0wB
Subject: [Intel-wired-lan] ice crashes when not enough IRQs
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EA1DD29245B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi!

Trying to build a minimal kernel I dropped CONFIG_IRQ_REMAP=y from 
my config, and (on AMD) that caused IRQ shortage. 

This seems to crash ice after commit ad61cd9c67ad ("ice: get rid of
num_lan_msix field"). Sorry for the lack of line numbers, I also
dropped DEBUG_INFO. But I think the problem itself is pretty obvious.
The fix less so, short of reverting ad61cd9c67ad. We can't just clamp
the queues in ice_vsi_alloc_q_vectors() because AFAICT that would make
ethtool -L succeed but driver would have a lower queue count than
requested.


[   80.931193] kselftest: Running tests in drivers/net
[   81.071248] ice 0000:e1:00.0 ens1f0np0: Dedicated RX or TX channels cannot be used simultaneously
[   81.090784] ice 0000:e1:00.0 ens1f0np0: Dedicated RX or TX channels cannot be used simultaneously
[   81.103099] ice 0000:e1:00.0: Failed to allocate 32 q_vectors for VSI 6, new value 8

2026-03-15 14:51:18.171508 [   81.123795] ------------[ cut here ]------------
[   81.128979] WARNING: net/core/dev.c:2861 at __netif_set_xps_queue+0x90a/0xb10, CPU#30: python3/3163
[   81.139148] Modules linked in:
[   81.142587] CPU: 30 UID: 0 PID: 3163 Comm: python3 Not tainted 7.0.0-rc3-banc-g76f4f4965ab1 #1 PREEMPT(lazy) 
[   81.153728] Hardware name: Giga Computing E163-Z34-AAH1-000/MZ33-DC1-000, BIOS R30_F44 12/24/2025
[   81.163696] RIP: 0010:__netif_set_xps_queue+0x90a/0xb10
[   81.169562] Code: 10 48 c7 04 c2 00 00 00 00 e8 62 88 64 ff e9 95 fe ff ff 45 31 c9 bf 40 00 00 00 45 31 d2 41 bb 14 00 00 00 e9 e7 f8 ff ff 90 <0f> 0b 90 e9 1d f7 ff ff 48 8b 5c 24 28 41 0f b7 c7 48 8d 04 80 48
[   81.190649] RSP: 0018:ff70e7fbedc0b7e8 EFLAGS: 00010246
[   81.196522] RAX: ff25cc4a83409000 RBX: 0000000000000008 RCX: 0000000000000000
[   81.204541] RDX: 0000000000000008 RSI: ff25cc4a809a6468 RDI: 0000000000000008
[   81.212559] RBP: ff70e7fbedc0b928 R08: ff25cc4a809a6468 R09: ff25cc4a832fa840
[   81.220575] R10: ff70e7fbe204e460 R11: ff25cc4a81beb0c8 R12: ff70e7fbedc0b8b8
[   81.228590] R13: ff25cc4a98c13828 R14: 0000000000000000 R15: 0000000000000008
[   81.236610] FS:  00007efe2b50af00(0000) GS:ff25cc6225af0000(0000) knlGS:0000000000000000
[   81.245701] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   81.252150] CR2: 000055c982e676a8 CR3: 000000014927c006 CR4: 0000000000771ef0
[   81.260169] PKRU: 55555554
[   81.263202] Call Trace:
[   81.265954]  <TASK>
[   81.268315]  ? ice_ena_vsi_txq+0x1eb/0x300
[   81.272924]  netif_set_xps_queue+0x2c/0x40
[   81.277522]  ice_vsi_cfg_txq+0x221/0x2a0
[   81.281937]  ice_vsi_cfg_lan_txqs+0x60/0x90
[   81.286640]  ice_vsi_cfg_lan+0x24/0xf0
[   81.290856]  ice_vsi_open+0x8a/0x180
[   81.294876]  ice_vsi_recfg_qs+0x10f/0x160
[   81.299384]  ice_set_channels+0x161/0x2b0
[   81.303893]  ethnl_set_channels+0x187/0x2b0
[   81.308601]  ethnl_default_set_doit+0xf6/0x200
[   81.313596]  genl_family_rcv_msg_doit+0xf3/0x150
[   81.318783]  genl_rcv_msg+0x1a1/0x2a0
[   81.322902]  ? ethnl_notify+0xb0/0xb0
[   81.327014]  ? genl_family_rcv_msg_dumpit+0xf0/0xf0
[   81.332496]  netlink_rcv_skb+0x54/0x100
[   81.336811]  genl_rcv+0x23/0x30
[   81.340333]  netlink_unicast+0x250/0x380
[   81.344745]  netlink_sendmsg+0x1ed/0x410
[   81.349156]  __sock_sendmsg+0x33/0x60
[   81.353277]  __sys_sendto+0x120/0x170
[   81.357397]  ? file_has_perm+0xcf/0xe0
[   81.361614]  __x64_sys_sendto+0x1f/0x30
[   81.365926]  do_syscall_64+0xe2/0x570
[   81.370045]  ? exc_page_fault+0x65/0x160
[   81.374456]  entry_SYSCALL_64_after_hwframe+0x4b/0x53
[   81.380128] RIP: 0033:0x7efe2b66fc5e
[   81.384150] Code: 4d 89 d8 e8 34 bd 00 00 4c 8b 5d f8 41 8b 93 08 03 00 00 59 5e 48 83 f8 fc 74 11 c9 c3 0f 1f 80 00 00 00 00 48 8b 45 10 0f 05 <c9> c3 83 e2 39 83 fa 08 75 e7 e8 13 ff ff ff 0f 1f 00 f3 0f 1e fa
[   81.405234] RSP: 002b:00007ffc680ce3f0 EFLAGS: 00000202 ORIG_RAX: 000000000000002c
[   81.413729] RAX: ffffffffffffffda RBX: 00007ffc680ce500 RCX: 00007efe2b66fc5e
[   81.421747] RDX: 0000000000000038 RSI: 00007efe2ac6c410 RDI: 0000000000000006
[   81.429762] RBP: 00007ffc680ce400 R08: 0000000000000000 R09: 0000000000000000
[   81.437778] R10: 0000000000000000 R11: 0000000000000202 R12: 0000000000000000
[   81.445798] R13: 00007efe2abc1160 R14: 0000000000000000 R15: 00007efe2aee6390
[   81.453806]  </TASK>
[   81.456266] ---[ end trace 0000000000000000 ]---
[   81.463586] BUG: unable to handle page fault for address: 0000000e00001039
[   81.471309] #PF: supervisor read access in kernel mode
[   81.477080] #PF: error_code(0x0000) - not-present page
[   81.482852] PGD 13ce4f067 P4D 0 
[   81.486481] Oops: Oops: 0000 [#1] SMP
[   81.490596] CPU: 30 UID: 0 PID: 3163 Comm: python3 Tainted: G        W           7.0.0-rc3-banc-g76f4f4965ab1 #1 PREEMPT(lazy) 
[   81.503488] Tainted: [W]=WARN
[   81.506822] Hardware name: Giga Computing E163-Z34-AAH1-000/MZ33-DC1-000, BIOS R30_F44 12/24/2025
[   81.516789] RIP: 0010:__netif_set_xps_queue+0x6e/0xb10
[   81.522561] Code: 89 f3 85 f6 0f 88 77 03 00 00 41 0f b7 c7 48 8d 04 80 48 c1 e0 06 48 03 42 18 48 8b 40 70 48 85 c0 0f 84 ff 02 00 00 45 31 d2 <66> 83 78 36 00 48 89 44 24 28 0f 85 ec 02 00 00 48 c7 c7 60 ba 48
[   81.543643] RSP: 0018:ff70e7fbedc0b7e8 EFLAGS: 00010246
[   81.549513] RAX: 0000000e00001003 RBX: 0000000000000001 RCX: 0000000000000000
[   81.557527] RDX: ff25cc4a83409000 RSI: 0000000000000001 RDI: 000000000000000d
[   81.565540] RBP: ff70e7fbedc0b928 R08: ff25cc4a809a6490 R09: ff25cc4a832fa480
[   81.573553] R10: 0000000000000000 R11: ff25cc4a81beb0c8 R12: ff70e7fbedc0b8b8
[   81.581565] R13: ff25cc4a98c13828 R14: 0000000000000000 R15: 000000000000000d
[   81.589579] FS:  00007efe2b50af00(0000) GS:ff25cc6225af0000(0000) knlGS:0000000000000000
[   81.598666] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   81.605120] CR2: 0000000e00001039 CR3: 000000014927c006 CR4: 0000000000771ef0
[   81.613132] PKRU: 55555554
[   81.616175] Call Trace:
[   81.618925]  <TASK>
[   81.621286]  ? ice_ena_vsi_txq+0x1eb/0x300
[   81.625890]  netif_set_xps_queue+0x2c/0x40
[   81.630493]  ice_vsi_cfg_txq+0x221/0x2a0
[   81.634901]  ice_vsi_cfg_lan_txqs+0x60/0x90
[   81.639601]  ice_vsi_cfg_lan+0x24/0xf0
[   81.643815]  ice_vsi_open+0x8a/0x180
[   81.647832]  ice_vsi_recfg_qs+0x10f/0x160
[   81.652338]  ice_set_channels+0x161/0x2b0
[   81.656842]  ethnl_set_channels+0x187/0x2b0
[   81.661543]  ethnl_default_set_doit+0xf6/0x200
[   81.666536]  genl_family_rcv_msg_doit+0xf3/0x150
[   81.671724]  genl_rcv_msg+0x1a1/0x2a0
[   81.675840]  ? ethnl_notify+0xb0/0xb0
[   81.679955]  ? genl_family_rcv_msg_dumpit+0xf0/0xf0
[   81.685434]  netlink_rcv_skb+0x54/0x100
[   81.689745]  genl_rcv+0x23/0x30
[   81.693276]  netlink_unicast+0x250/0x380
[   81.697683]  netlink_sendmsg+0x1ed/0x410
[   81.702092]  __sock_sendmsg+0x33/0x60
[   81.706206]  __sys_sendto+0x120/0x170
[   81.710320]  ? file_has_perm+0xcf/0xe0
[   81.714533]  __x64_sys_sendto+0x1f/0x30
[   81.718843]  do_syscall_64+0xe2/0x570
[   81.722957]  ? exc_page_fault+0x65/0x160
[   81.727365]  entry_SYSCALL_64_after_hwframe+0x4b/0x53
[   81.733039] RIP: 0033:0x7efe2b66fc5e
[   81.737057] Code: 4d 89 d8 e8 34 bd 00 00 4c 8b 5d f8 41 8b 93 08 03 00 00 59 5e 48 83 f8 fc 74 11 c9 c3 0f 1f 80 00 00 00 00 48 8b 45 10 0f 05 <c9> c3 83 e2 39 83 fa 08 75 e7 e8 13 ff ff ff 0f 1f 00 f3 0f 1e fa
[   81.758138] RSP: 002b:00007ffc680ce3f0 EFLAGS: 00000202 ORIG_RAX: 000000000000002c
[   81.766643] RAX: ffffffffffffffda RBX: 00007ffc680ce500 RCX: 00007efe2b66fc5e
[   81.774656] RDX: 0000000000000038 RSI: 00007efe2ac6c410 RDI: 0000000000000006
[   81.782668] RBP: 00007ffc680ce400 R08: 0000000000000000 R09: 0000000000000000
[   81.790681] R10: 0000000000000000 R11: 0000000000000202 R12: 0000000000000000
[   81.798695] R13: 00007efe2abc1160 R14: 0000000000000000 R15: 00007efe2aee6390
[   81.806709]  </TASK>
[   81.809166] Modules linked in:
[   81.812599] CR2: 0000000e00001039
[   81.816325] ---[ end trace 0000000000000000 ]---
[   81.821513] RIP: 0010:__netif_set_xps_queue+0x6e/0xb10
[   81.827287] Code: 89 f3 85 f6 0f 88 77 03 00 00 41 0f b7 c7 48 8d 04 80 48 c1 e0 06 48 03 42 18 48 8b 40 70 48 85 c0 0f 84 ff 02 00 00 45 31 d2 <66> 83 78 36 00 48 89 44 24 28 0f 85 ec 02 00 00 48 c7 c7 60 ba 48
[   81.848368] RSP: 0018:ff70e7fbedc0b7e8 EFLAGS: 00010246
[   81.854237] RAX: 0000000e00001003 RBX: 0000000000000001 RCX: 0000000000000000
[   81.862251] RDX: ff25cc4a83409000 RSI: 0000000000000001 RDI: 000000000000000d
[   81.870264] RBP: ff70e7fbedc0b928 R08: ff25cc4a809a6490 R09: ff25cc4a832fa480
[   81.878277] R10: 0000000000000000 R11: ff25cc4a81beb0c8 R12: ff70e7fbedc0b8b8
[   81.886290] R13: ff25cc4a98c13828 R14: 0000000000000000 R15: 000000000000000d
[   81.894302] FS:  00007efe2b50af00(0000) GS:ff25cc6225af0000(0000) knlGS:0000000000000000
[   81.903388] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   81.909841] CR2: 0000000e00001039 CR3: 000000014927c006 CR4: 0000000000771
