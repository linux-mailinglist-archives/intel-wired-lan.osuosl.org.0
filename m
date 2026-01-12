Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A03D15BDF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 00:10:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56C0241279;
	Mon, 12 Jan 2026 23:10:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id msyDyv0ZldzI; Mon, 12 Jan 2026 23:10:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0D72411C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768259412;
	bh=ys9dvyGwIYrmKuQ4BRnJwsHizh4UyGAtZEMdFdAVXfI=;
	h=Date:In-Reply-To:References:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=xw95TICOwOz/FqJjbFEUO6EW95DsGUdZCjYaayu1b1Du39zaHNBUdOVfdTSVT3nHy
	 eXNGKEEfmRF2tTNmgA09UXa9SkNOkaNNjNGfB2s80tDZVzcyNFi5mbpU8BdZcTvugm
	 ezJDAs1+LdMrb5nzGF5kwtkmdEnERhJawpMOseuirAM4cqfDoZhkEerpy9HedTkQX5
	 0asGi1SEydgy3knnrRAnpWSRGvQ6hfMV9HE9Gx8M08CowgVbK0gTA266he4ecWCe2Q
	 hBpEbforal/KHrPqDODyiEEvpkZKWRP0TeDn4WCvuEQ8brMJdUBQIA1pmL6IpcvKVt
	 nwn1YF8U+ZOvw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C0D72411C4;
	Mon, 12 Jan 2026 23:10:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0EFE91CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 23:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E76D4811D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 23:10:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fT7KEwOYq6LX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 23:10:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::134a; helo=mail-dy1-x134a.google.com;
 envelope-from=3ux9laqykdzgviiffcaiiafy.wigchnyf-qclyx-fuhfcmnm.imoimf.ila@flex--boolli.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 36F14811D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36F14811D1
Received: from mail-dy1-x134a.google.com (mail-dy1-x134a.google.com
 [IPv6:2607:f8b0:4864:20::134a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 36F14811D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 23:10:10 +0000 (UTC)
Received: by mail-dy1-x134a.google.com with SMTP id
 5a478bee46e88-2b21d136010so1863286eec.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 15:10:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768259409; x=1768864209;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ys9dvyGwIYrmKuQ4BRnJwsHizh4UyGAtZEMdFdAVXfI=;
 b=CaLMPmmvHesiOLfYhR9RWWKz5ntxaMY/ajwW/KR6dl4qhNa1PP+2qpE+xjHjqnHkSL
 vdVj+SKTmXxZofsy/mwDCk/eWnDoZHiFm7ipwoSgff/vuJ9119RKbishqK8yzVSFvew8
 p5T1iarXoeeFakdLP2u/5IMkF5UxuiPkiRoXa+MKsQ/JSE7P9+1YNj3lhdU6qIsrQWdK
 E+Rg92JHhuTEsVVVBsIhWQgkTx3yI+NbZb9Sz1ovmGCUYGfi6raQfBpFoJxO7CxzXIXd
 ERWqr4exKCnoRbMu97dSFxcqHUroqIry6ymkd36yrlMPng8G7v1u8It24NCytCZ+e1dj
 IK8g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUzu8Jp/EUuuyOUP3iAFKHMnau/mbwxf7g4Wnntwapa6uFHJ+rvnSzMSzj52naut0HoygSgjDjmcZ1WckcadCw=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy8Glng/syr3mRNvYsJNrq1itMILExtsYdXCR4XZXC9LhdKE5we
 Qz6Pg0eoo/KWbIzNuGqnqA0yOcsR/PLKGuWJiCOi6N4S8z75gvm+dTTFfPMNiLOa/JVuzqNTEeN
 Pc9CBLw==
X-Google-Smtp-Source: AGHT+IG2eLtwALIqRuLzTvWBZTR3JwnqCHU/cLQ/o7m/M8FDpJLzndU6O/Y0t/1rJsF81ci2jWQlHUXyLwY=
X-Received: from dlbtp2.prod.google.com ([2002:a05:7022:3b82:b0:123:2dd9:db4])
 (user=boolli job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7022:6286:b0:119:e56b:9899
 with SMTP id a92af1059eb24-121f8a5b4demr19013846c88.0.1768259409124; Mon, 12
 Jan 2026 15:10:09 -0800 (PST)
Date: Mon, 12 Jan 2026 23:09:43 +0000
In-Reply-To: <20260112230944.3085309-1-boolli@google.com>
Mime-Version: 1.0
References: <20260112230944.3085309-1-boolli@google.com>
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
Message-ID: <20260112230944.3085309-2-boolli@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Decotigny <decot@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, 
 Li Li <boolli@google.com>, emil.s.tantilov@intel.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1768259409; x=1768864209; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=ys9dvyGwIYrmKuQ4BRnJwsHizh4UyGAtZEMdFdAVXfI=;
 b=SsBKtZm72J9AkJLdvOXj6ihHqbYkHgQpTV7CJyqB/P/b32LaNm7lZQh2L82qTY2Q/Z
 0glnp839gxz+F9VP1dUq8abpSIg1OXWIMk0ACj+yvGM6s5ZWAruf26Bh59VQRBQW9hMN
 EQGgj4gYW7ZB2PD8CR0HljPR3W6/cR5uzkuMEY2cWf1BTgHoOZWcpiZFvIb/j+Qq7YhD
 t9WZm+VTYQ4M+FaHq0gO4tDGfoSd4bgsEQzwrjhRLANPxGzbviBY2IpTRMrvIVRnLGLt
 87JM8Cph8W8A4tseQh7xmcuU+RHh31pnog9IaNnSEVAHWgLEqaTtCqMb7Pe+rd4yAxa5
 tJwA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=SsBKtZm7
Subject: [Intel-wired-lan] [PATCH 1/2] idpf: skip deallocating bufq_sets
 from rx_qgrp if it is NULL.
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
From: Li Li via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Li Li <boolli@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In idpf_rxq_group_alloc(), if rx_qgrp->splitq.bufq_sets failed to get
allocated:

	rx_qgrp->splitq.bufq_sets = kcalloc(vport->num_bufqs_per_qgrp,
					    sizeof(struct idpf_bufq_set),
					    GFP_KERNEL);
	if (!rx_qgrp->splitq.bufq_sets) {
		err = -ENOMEM;
		goto err_alloc;
	}

idpf_rxq_group_rel() would attempt to deallocate it in
idpf_rxq_sw_queue_rel(), causing a kernel panic:

```
[    7.967242] early-network-sshd-n-rexd[3148]: knetbase: Info: [    8.127804] BUG: kernel NULL pointer dereference, address: 00000000000000c0
...
[    8.129779] RIP: 0010:idpf_rxq_group_rel+0x101/0x170
...
[    8.133854] Call Trace:
[    8.133980]  <TASK>
[    8.134092]  idpf_vport_queues_alloc+0x286/0x500
[    8.134313]  idpf_vport_open+0x4d/0x3f0
[    8.134498]  idpf_open+0x71/0xb0
[    8.134668]  __dev_open+0x142/0x260
[    8.134840]  netif_open+0x2f/0xe0
[    8.135004]  dev_open+0x3d/0x70
[    8.135166]  bond_enslave+0x5ed/0xf50
[    8.135345]  ? nla_put_ifalias+0x3d/0x90
[    8.135533]  ? kvfree_call_rcu+0xb5/0x3b0
[    8.135725]  ? kvfree_call_rcu+0xb5/0x3b0
[    8.135916]  do_set_master+0x114/0x160
[    8.136098]  do_setlink+0x412/0xfb0
[    8.136269]  ? security_sock_rcv_skb+0x2a/0x50
[    8.136509]  ? sk_filter_trim_cap+0x7c/0x320
[    8.136714]  ? skb_queue_tail+0x20/0x50
[    8.136899]  ? __nla_validate_parse+0x92/0xe50
[    8.137112]  ? security_capable+0x35/0x60
[    8.137304]  rtnl_newlink+0x95c/0xa00
[    8.137483]  ? __rtnl_unlock+0x37/0x70
[    8.137664]  ? netdev_run_todo+0x63/0x530
[    8.137855]  ? allocate_slab+0x280/0x870
[    8.138044]  ? security_capable+0x35/0x60
[    8.138235]  rtnetlink_rcv_msg+0x2e6/0x340
[    8.138431]  ? __pfx_rtnetlink_rcv_msg+0x10/0x10
[    8.138650]  netlink_rcv_skb+0x16a/0x1a0
[    8.138840]  netlink_unicast+0x20a/0x320
[    8.139028]  netlink_sendmsg+0x304/0x3b0
[    8.139217]  __sock_sendmsg+0x89/0xb0
[    8.139399]  ____sys_sendmsg+0x167/0x1c0
[    8.139588]  ? ____sys_recvmsg+0xed/0x150
[    8.139780]  ___sys_sendmsg+0xdd/0x120
[    8.139960]  ? ___sys_recvmsg+0x124/0x1e0
[    8.140152]  ? rcutree_enqueue+0x1f/0xb0
[    8.140341]  ? rcutree_enqueue+0x1f/0xb0
[    8.140528]  ? call_rcu+0xde/0x2a0
[    8.140695]  ? evict+0x286/0x2d0
[    8.140856]  ? rcutree_enqueue+0x1f/0xb0
[    8.141043]  ? kmem_cache_free+0x2c/0x350
[    8.141236]  __x64_sys_sendmsg+0x72/0xc0
[    8.141424]  do_syscall_64+0x6f/0x890
[    8.141603]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[    8.141841] RIP: 0033:0x7f2799d21bd0
...
[    8.149905] Kernel panic - not syncing: Fatal exception
[    8.175940] Kernel Offset: 0xf800000 from 0xffffffff81000000 (relocation range: 0xffffffff80000000-0xffffffffbfffffff)
[    8.176425] Rebooting in 10 seconds..
```

Tested: With this patch, the kernel panic no longer appears.
Fixes: 95af467d9a4e ("idpf: configure resources for RX queues")

Signed-off-by: Li Li <boolli@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index e7b131dba200c..b4dab4a8ee11b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1337,6 +1337,8 @@ static void idpf_txq_group_rel(struct idpf_vport *vport)
 static void idpf_rxq_sw_queue_rel(struct idpf_rxq_group *rx_qgrp)
 {
 	int i, j;
+	if (!rx_qgrp->splitq.bufq_sets)
+		return;
 
 	for (i = 0; i < rx_qgrp->vport->num_bufqs_per_qgrp; i++) {
 		struct idpf_bufq_set *bufq_set = &rx_qgrp->splitq.bufq_sets[i];
-- 
2.52.0.457.g6b5491de43-goog

