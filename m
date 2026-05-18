Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCaaDLn+Cmp8/AQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2026 13:57:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EABC556C138
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2026 13:57:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 410EF6FA8F;
	Mon, 18 May 2026 11:57:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nPpUFWSmLuCY; Mon, 18 May 2026 11:57:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFEDA6FA63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779105459;
	bh=qUv5qyZ0s74gNBB2IFM4kCdM8UZzxWoS4ADMxHMV17E=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cjWhor8XLA5JgfHO+DseDvQHwYhDYAhp87bhEPyPTryG6gzJqtCzpG5H5CGsS+pb7
	 PmXQuxy55eHIDNBmpmxemMUhR6YwTDzNbiVl+3ShSh9a3MOEwdSfS4Gt9fR+3TaBHQ
	 1yLL0kpFv94he/Imh7FGt+Gv1BTBYRlJX8hgPi2L37ptn8G7s5wE27+mn1t30diXLo
	 +ug1YXd87KseKMQTfGPcQ7+KQRUU3k0f3irSeNdHn7UshKeU6F18Hfd64w7cf5TWtm
	 yj/y3+J+w45KmmWwrKZd69rBh5Gk+ANISTWYxDTrYmt9vK9kpUT0rhtW9g1ptrFPE/
	 VmAi08FYw40Dg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFEDA6FA63;
	Mon, 18 May 2026 11:57:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 59FE5282
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 11:57:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 401184ED5A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 11:57:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Geq5u4BKaLUE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 May 2026 11:57:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 812CF4ED59
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 812CF4ED59
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 812CF4ED59
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 11:57:37 +0000 (UTC)
X-CSE-ConnectionGUID: TP8VQ7jOQjymE1uWYtYUbA==
X-CSE-MsgGUID: fXpsy9ZwRqWrLTrffi8XDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="83808210"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="83808210"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 04:57:36 -0700
X-CSE-ConnectionGUID: fFMM4JefRKOR7eRPBBHuRQ==
X-CSE-MsgGUID: imDZ3k3fSYqAcabYJ7+yvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="235165872"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa010.fm.intel.com with ESMTP; 18 May 2026 04:57:32 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4681A284E3;
 Mon, 18 May 2026 12:57:31 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 18 May 2026 13:15:04 +0200
Message-ID: <20260518111506.65284-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779105457; x=1810641457;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W3cyeDLtkZm6PdKqV7BPnQGyExABO6MiNvVjLa2v1ag=;
 b=KO8n2eIGVQlB0jZYblz3PyoBTgupv8QePOPy+IkbXDfJ6Ctgon2LOEru
 Kta3gdsi9HZED2S/fBxT0Q20XhAaoGuHGqGt8ZUF1ricnqGMadscxeAI3
 yBLq1aXw73+e3O7LHYdWsgqz+GiGJRhp33Pum8ygnEiWzCqfNkbMIx6TL
 CgJ07RUh5Jel9wVI1GJr1lu2X32/mWWhN4ZCkDm+sAGJyi66NJEOQompv
 aLpHhuxYRfI+J1s/hf6fBkA38yCLj5khOi8I3lwk5S41vg9w9/nuHuzMZ
 dBQaccRdD2FKiB3HblRwP1zZiFWit9HT1FtUbrYdm9Xfx9cSo/VGlpZ1a
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KO8n2eIG
Subject: [Intel-wired-lan] [PATCH iwl-net] ixgbe: do not configure xps for
 XDP queues
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
X-Rspamd-Queue-Id: EABC556C138
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:larysa.zaremba@intel.com,m:aleksander.lobakin@intel.com,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

netif_set_xps_queue() should not be called for an XDP Tx queue, since such
queues are not netdev-exposed. On systems with number of CPUs >=64, on E610
adapter, netdev is configured with maximum number queue pairs being 63
(due to MSI-X assignment), but configuring XDP results in 64 XDP queues.

So, during XDP program load, when netif_set_xps_queue() is called for the
last XDP queue, we get a WARNING with a call trace and KASAN report
afterwards (if enabled).

[ 2012.699800] WARNING: net/core/dev.c:2854 at __netif_set_xps_queue+0x116a/0x1e40, CPU#36: xdpsock/103668
[...]
[ 2012.700029] RIP: 0010:__netif_set_xps_queue+0x116a/0x1e40
[ 2012.700035] Code: b6 34 06 48 89 f8 83 e0 07 83 c0 01 40 38 f0 7c 09 40 84 f6 0f 85 03 0a 00 00 0f b7 44 24 40 66 43 89 44 6a 18 e9 01 fb ff ff <0f> 0b e9 f2 ee ff ff 44 8b 44 24 44 45 85 c0 74 50 4d 85 e4 0f 84
[ 2012.700040] RSP: 0018:ffff8882369aeb28 EFLAGS: 00010246
[ 2012.700046] RAX: 0000000000000000 RBX: 000000000000003f RCX: 0000000000000000
[ 2012.700050] RDX: 1ffff1111da3d891 RSI: ffff888120e34250 RDI: ffff8888ed1ec488
[ 2012.700054] RBP: ffff888913281560 R08: 0000000000000000 R09: ffff8888ed1ec000
[ 2012.700058] R10: ffff8888a2e83180 R11: 0000000000000000 R12: 0000000000007fa8
[ 2012.700061] R13: 000000000000003f R14: ffff888120e34854 R15: ffff8889132817c8
[ 2012.700065] FS:  00007fc8ea9ff740(0000) GS:ffff88884cefe000(0000) knlGS:0000000000000000
[ 2012.700069] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 2012.700073] CR2: 00007f81c8000020 CR3: 00000002299f8006 CR4: 00000000007726f0
[ 2012.700077] PKRU: 55555554
[ 2012.700080] Call Trace:
[ 2012.700084]  <TASK>
[ 2012.700087]  ? ktime_get+0x61/0x150
[ 2012.700097]  ? usleep_range_state+0x133/0x1b0
[ 2012.700108]  ? __pfx_usleep_range_state+0x10/0x10
[ 2012.700114]  netif_set_xps_queue+0x31/0x50
[ 2012.700119]  ixgbe_configure_tx_ring+0x472/0x920 [ixgbe]
[...]
[ 2012.700486]  ixgbe_xdp+0x38f/0x750 [ixgbe]

[...]

[ 2012.701094] BUG: KASAN: slab-out-of-bounds in __netif_set_xps_queue+0x1ac5/0x1e40
[ 2012.701100] Write of size 4 at addr ffff88888d43cff8 by task xdpsock/103668

Skip XPS configuration for XDP Tx queues.

Fixes: 33fdc82f0883 ("ixgbe: add support for XDP_TX action")
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index e0a986f1c96a..bd689dc8201e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -3964,7 +3964,8 @@ void ixgbe_configure_tx_ring(struct ixgbe_adapter *adapter,
 	}
 
 	/* initialize XPS */
-	if (!test_and_set_bit(__IXGBE_TX_XPS_INIT_DONE, ring->state)) {
+	if (!ring_is_xdp(ring) &&
+	    !test_and_set_bit(__IXGBE_TX_XPS_INIT_DONE, ring->state)) {
 		struct ixgbe_q_vector *q_vector = ring->q_vector;
 
 		if (q_vector)
-- 
2.52.0

