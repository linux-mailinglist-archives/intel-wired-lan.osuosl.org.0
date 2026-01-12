Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D289D15BE5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 00:10:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D458B411C4;
	Mon, 12 Jan 2026 23:10:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CtQ97P_x1W3u; Mon, 12 Jan 2026 23:10:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4898241278
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768259415;
	bh=1GtgZegM7FjbeyuOL5Y6kyqpA7dLG8bpU56qxoB17r0=;
	h=Date:In-Reply-To:References:From:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AumEYq5OWNJgowNVhOT8WSykEBFXOiD8v5HeOjWfTSRY16QnBzkArYoAYcDnejO9J
	 +Ts0qwRg6qsBt1NahO7deqsenRpyvyuG6QeBus8x2FlQ7icZtsuLF6ThjoMKLne3Kl
	 zHG64QlCWKhZxQnGM2QIkKhErS8/VI7EifxkHmywaK0Gl7LpbpazeTcYsHjTE5Dmzd
	 poZemC0NCkSsgfr2M2Ar7bljnVBy82g9DW/es7Gtx5vz18AAgXKZ5myyr1JnlsGDFT
	 K6HG6UbiOdRWwYrMcI8Y5+kkglucDFRxguGhHx8H2SKTEw1HB637WMybE3/YKiJRi7
	 OLAhctU0lGZig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4898241278;
	Mon, 12 Jan 2026 23:10:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C339018D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 23:10:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A8369610D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 23:10:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C_ZjWII6bCpG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 23:10:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::124a; helo=mail-dl1-x124a.google.com;
 envelope-from=3u39laqykdzoxkkhheckkcha.ykiejpah-senaz-hwjheopo.koqkoh.knc@flex--boolli.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EF7DA610D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF7DA610D5
Received: from mail-dl1-x124a.google.com (mail-dl1-x124a.google.com
 [IPv6:2607:f8b0:4864:20::124a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EF7DA610D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 23:10:12 +0000 (UTC)
Received: by mail-dl1-x124a.google.com with SMTP id
 a92af1059eb24-11dd10b03c6so10185839c88.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 15:10:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768259412; x=1768864212;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1GtgZegM7FjbeyuOL5Y6kyqpA7dLG8bpU56qxoB17r0=;
 b=D0PCucwMoSkbZQeuEnMtoe0hKVkVVMbUPdSQSY080FYcntPYm0fts984QqK8aRs1IN
 TA2VGYB0QRmHsZlCAeIM6ldhdzVw2TQzjG8+O5q2e8PkyXwfVBfdcQpQEDwuxOdYnriL
 Pa6MHlNYj7iB4A60y+KJmD6UcitsRyb5e4wJuSdA5m4dI2gjKrQywIkfnL8+iweYCfYf
 NGVmEwKHDdMRdgPcLi++I89n9FVq0DUpkcZ9CqGAWqPoOMITc9Agh6dqhu48ec8PIYyq
 HdVRzd9geFPT0QKsJv2ozx3NE22ios8ARi1FtYjmw3j72cvpttFc7CSyleeazZgl/WvE
 WykA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUsxZQpN0sacrKKrT60w2wO0jnLq+Onn7/dBVkGtXrYbL3CX7T/yuLY6eXEBUCyMG1Klkjf9RRHQGkCtuwB3VY=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz4RBcoFHn0wUbDaQI8wXsVqhbFt2Bk5axpVb/G+Z7Snu9x4apP
 K5kSzPLP70I7hRNM7yGAKBrYGl8yiTVN6UAwyJMwQoHXMGvfnSukL4ZIAqCHv1uZ17r8M3WvbrQ
 qkWNy1Q==
X-Google-Smtp-Source: AGHT+IFUZfbTXF1Fw1Cvh/r4GdD8A92eVq9LwJaEBG9JrsMm9bSGeUApjkJeHgxbw+xleiw77AYeSVOJYO4=
X-Received: from dlbti6.prod.google.com ([2002:a05:7022:1b06:b0:11f:3484:4f15])
 (user=boolli job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7022:f90:b0:11d:c04a:dc5b
 with SMTP id a92af1059eb24-121f8b7a790mr16487972c88.30.1768259411873; Mon, 12
 Jan 2026 15:10:11 -0800 (PST)
Date: Mon, 12 Jan 2026 23:09:44 +0000
In-Reply-To: <20260112230944.3085309-1-boolli@google.com>
Mime-Version: 1.0
References: <20260112230944.3085309-1-boolli@google.com>
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
Message-ID: <20260112230944.3085309-3-boolli@google.com>
From: Li Li <boolli@google.com>
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
 d=google.com; s=20230601; t=1768259412; x=1768864212; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=1GtgZegM7FjbeyuOL5Y6kyqpA7dLG8bpU56qxoB17r0=;
 b=E0j/AznrYq7BxkOS4UNyuIkMXTw7ofM7I7065KR4/lthnyak3Ab+VewPX+nCO2YSSM
 flNyTv7jkCHKONW5Up0VFVPDhsdqNvfYFXyWIzfPwmW+oFjsT4oqI1k+WmBkrt2MWRvP
 YbOBsemWI8Xc4pbGnAlSBCH381URFkHCm8isdnBFc2XwsT/5Tp2CH24HDp1EY3JRyNks
 l/r/jj/CAMMzfG6cpy7+BlTPRy/++POrzxe+yk4OCfWMzjtu+uuzYUzxkrYRJjpkyB7c
 cN/a3txVfM8pw3b2ctwRqebQsLY0UfaYQcwT1oRTmw8nnoxYahaHgeZXWJPRL61MplQ6
 OU7g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=E0j/Aznr
Subject: [Intel-wired-lan] [PATCH 2/2] idpf: skip deallocating txq group's
 txqs if it is NULL.
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

In idpf_txq_group_alloc(), if any txq group's txqs failed to
allocate memory:

	for (j = 0; j < tx_qgrp->num_txq; j++) {
		tx_qgrp->txqs[j] = kzalloc(sizeof(*tx_qgrp->txqs[j]),
					   GFP_KERNEL);
		if (!tx_qgrp->txqs[j])
			goto err_alloc;
	}

It would cause a NULL ptr kernel panic in idpf_txq_group_rel():

	for (j = 0; j < txq_grp->num_txq; j++) {
		if (flow_sch_en) {
			kfree(txq_grp->txqs[j]->refillq);
			txq_grp->txqs[j]->refillq = NULL;
		}

		kfree(txq_grp->txqs[j]);
		txq_grp->txqs[j] = NULL;
	}

[    6.532461] BUG: kernel NULL pointer dereference, address: 0000000000000058
...
[    6.534433] RIP: 0010:idpf_txq_group_rel+0xc9/0x110
...
[    6.538513] Call Trace:
[    6.538639]  <TASK>
[    6.538760]  idpf_vport_queues_alloc+0x75/0x550
[    6.538978]  idpf_vport_open+0x4d/0x3f0
[    6.539164]  idpf_open+0x71/0xb0
[    6.539324]  __dev_open+0x142/0x260
[    6.539506]  netif_open+0x2f/0xe0
[    6.539670]  dev_open+0x3d/0x70
[    6.539827]  bond_enslave+0x5ed/0xf50
[    6.540005]  ? rcutree_enqueue+0x1f/0xb0
[    6.540193]  ? call_rcu+0xde/0x2a0
[    6.540375]  ? barn_get_empty_sheaf+0x5c/0x80
[    6.540594]  ? __kfree_rcu_sheaf+0xb6/0x1a0
[    6.540793]  ? nla_put_ifalias+0x3d/0x90
[    6.540981]  ? kvfree_call_rcu+0xb5/0x3b0
[    6.541173]  ? kvfree_call_rcu+0xb5/0x3b0
[    6.541365]  do_set_master+0x114/0x160
[    6.541547]  do_setlink+0x412/0xfb0
[    6.541717]  ? security_sock_rcv_skb+0x2a/0x50
[    6.541931]  ? sk_filter_trim_cap+0x7c/0x320
[    6.542136]  ? skb_queue_tail+0x20/0x50
[    6.542322]  ? __nla_validate_parse+0x92/0xe50
ro[o t   t o6 .d5e4f2a5u4l0t]-  ? security_capable+0x35/0x60
[    6.542792]  rtnl_newlink+0x95c/0xa00
[    6.542972]  ? __rtnl_unlock+0x37/0x70
[    6.543152]  ? netdev_run_todo+0x63/0x530
[    6.543343]  ? allocate_slab+0x280/0x870
[    6.543531]  ? security_capable+0x35/0x60
[    6.543722]  rtnetlink_rcv_msg+0x2e6/0x340
[    6.543918]  ? __pfx_rtnetlink_rcv_msg+0x10/0x10
[    6.544138]  netlink_rcv_skb+0x16a/0x1a0
[    6.544328]  netlink_unicast+0x20a/0x320
[    6.544516]  netlink_sendmsg+0x304/0x3b0
[    6.544748]  __sock_sendmsg+0x89/0xb0
[    6.544928]  ____sys_sendmsg+0x167/0x1c0
[    6.545116]  ? ____sys_recvmsg+0xed/0x150
[    6.545308]  ___sys_sendmsg+0xdd/0x120
[    6.545489]  ? ___sys_recvmsg+0x124/0x1e0
[    6.545680]  ? rcutree_enqueue+0x1f/0xb0
[    6.545867]  ? rcutree_enqueue+0x1f/0xb0
[    6.546055]  ? call_rcu+0xde/0x2a0
[    6.546222]  ? evict+0x286/0x2d0
[    6.546389]  ? rcutree_enqueue+0x1f/0xb0
[    6.546577]  ? kmem_cache_free+0x2c/0x350
[    6.546784]  __x64_sys_sendmsg+0x72/0xc0
[    6.546972]  do_syscall_64+0x6f/0x890
[    6.547150]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[    6.547393] RIP: 0033:0x7fc1a3347bd0
...
[    6.551375] RIP: 0010:idpf_txq_group_rel+0xc9/0x110
...
[    6.578856] Rebooting in 10 seconds..

We should skip deallocating txqs[j] if it is NULL in the first place.

Tested: with this patch, the kernel panic no longer appears.
Fixes: 1c325aac10a8 ("idpf: configure resources for TX queues")

Signed-off-by: Li Li <boolli@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index b4dab4a8ee11b..25207da6c995d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1311,6 +1311,9 @@ static void idpf_txq_group_rel(struct idpf_vport *vport)
 		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
 
 		for (j = 0; j < txq_grp->num_txq; j++) {
+			if (!txq_grp->txqs[j])
+				continue;
+
 			if (flow_sch_en) {
 				kfree(txq_grp->txqs[j]->refillq);
 				txq_grp->txqs[j]->refillq = NULL;
-- 
2.52.0.457.g6b5491de43-goog

