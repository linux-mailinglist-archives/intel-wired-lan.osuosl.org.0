Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEosK5LUummfcAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 17:36:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FB62BF5E4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 17:36:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EFA46834CB;
	Wed, 18 Mar 2026 16:36:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B1QLkseo4HFU; Wed, 18 Mar 2026 16:36:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65FFD83466
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773851792;
	bh=INYvMaoLiOhniBfUCXkBpSOwWIudXsMBn4ffkS7ZbVU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8y+F/soe91YorTcnxKR8xaWgsfSjY4f3wKdSF595rGLJ/n/cqBVnjp0KypcYFoH9S
	 RofxZcgi+rIXMof/uRjkZQIpv0AYnY4qOEc30RSi/o0Dd9awyeqHfWFfXdMQo4mXAZ
	 +nasEiH3CwektDnYoaoWZdHTG+DbBGO6lY8GqtKvU//fwg4AwceqlkSnmdTKG60Lxq
	 su/tXpn5kHi3gHP1QFxPik3DE4Req06Sr4pVeVkGBh8z1vdsq2qWUMYXgzKnluY4jF
	 cTBLxyJKtKrCmGSdO0YO14H+TNYrh01i3fHoiOcRsSCfNaaqFFnfWQnoQzg/BeOdzc
	 ojXkh9Oq8U8NQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65FFD83466;
	Wed, 18 Mar 2026 16:36:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EC43C1AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 16:36:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D254C83422
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 16:36:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xLMXaHf6xLar for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 16:36:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D921C833CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D921C833CD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D921C833CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 16:36:29 +0000 (UTC)
X-CSE-ConnectionGUID: WagKcMeMRRmYUS87g0q3Ow==
X-CSE-MsgGUID: vKUy7YbSQFGj+ngbFi4GRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="62479395"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="62479395"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 09:36:29 -0700
X-CSE-ConnectionGUID: JbaXq9VsReu+4V0r1YipzA==
X-CSE-MsgGUID: lQ4EQzCYToqmocSB6nSDTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="218687686"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 18 Mar 2026 09:36:26 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Wed, 18 Mar 2026 17:35:02 +0100
Message-ID: <20260318163505.31765-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260318163505.31765-1-aleksander.lobakin@intel.com>
References: <20260318163505.31765-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773851790; x=1805387790;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dbnQ/MMu1E+QSK5rCsf9tW1qv5XIaaGwExNh2lKHdx4=;
 b=DtWjBE0VWmcR28k7eVbnpuKAUmjAVirpB3AYd4vuTYxQeS1KX1zV7bGZ
 RY1z4lV/g/Zf+VKMs6M30TbqLTe/w6d4RZZvAU/tBsDwx44Qcpj+g7JVA
 4EQG1boytuc+sfusqqZR+Pd0rHisIopOUHP9693xtmO0z0varLBvLgCJM
 jxvG0GZll5KBQnnwkpLMm3JIAR99vXY62z6WgpPO+OPjsCypFLtxZ7llz
 iXRxdxodAG5gh5RfULDJQKH/5xAmkdaxDAulLgnd0IvOgrKVMGAUdJRRa
 N0P4wuwfc/ZRazabKalsu4Hp+VYA682X1BkG4UsvBCThAaMUpwTk97tUw
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DtWjBE0V
Subject: [Intel-wired-lan] [PATCH iwl-next v4 2/5] libeth: handle creating
 pools with unreadable buffers
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.994];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 75FB62BF5E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

libeth uses netmems for quite some time already, so in order to
support unreadable frags / memory providers, it only needs to set
PP_FLAG_ALLOW_UNREADABLE_NETMEM when needed.
Also add a couple sanity checks to make sure the driver didn't mess
up the configuration options and, in case when an MP is installed,
return the truesize always equal to PAGE_SIZE, so that
libeth_rx_alloc() will never try to allocate frags. Memory providers
manage buffers on their own and expect 1:1 buffer / HW Rx descriptor
association.

Bonus: mention in the libeth_sqe_type description that
LIBETH_SQE_EMPTY should also be used for netmem Tx SQEs -- they
don't need DMA unmapping.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/libeth/tx.h                |  2 +-
 drivers/net/ethernet/intel/libeth/rx.c | 42 ++++++++++++++++++++++++++
 2 files changed, 43 insertions(+), 1 deletion(-)

diff --git a/include/net/libeth/tx.h b/include/net/libeth/tx.h
index c3db5c6f1641..a66fc2b3a114 100644
--- a/include/net/libeth/tx.h
+++ b/include/net/libeth/tx.h
@@ -12,7 +12,7 @@
 
 /**
  * enum libeth_sqe_type - type of &libeth_sqe to act on Tx completion
- * @LIBETH_SQE_EMPTY: unused/empty OR XDP_TX/XSk frame, no action required
+ * @LIBETH_SQE_EMPTY: empty OR netmem/XDP_TX/XSk frame, no action required
  * @LIBETH_SQE_CTX: context descriptor with empty SQE, no action required
  * @LIBETH_SQE_SLAB: kmalloc-allocated buffer, unmap and kfree()
  * @LIBETH_SQE_FRAG: mapped skb frag, only unmap DMA
diff --git a/drivers/net/ethernet/intel/libeth/rx.c b/drivers/net/ethernet/intel/libeth/rx.c
index 8874b714cdcc..11e6e8f353ef 100644
--- a/drivers/net/ethernet/intel/libeth/rx.c
+++ b/drivers/net/ethernet/intel/libeth/rx.c
@@ -6,6 +6,7 @@
 #include <linux/export.h>
 
 #include <net/libeth/rx.h>
+#include <net/netdev_queues.h>
 
 /* Rx buffer management */
 
@@ -139,9 +140,47 @@ static bool libeth_rx_page_pool_params_zc(struct libeth_fq *fq,
 	fq->buf_len = clamp(mtu, LIBETH_RX_BUF_STRIDE, max);
 	fq->truesize = fq->buf_len;
 
+	/*
+	 * Allow frags only for kernel pages. `fq->truesize == pp->max_len`
+	 * will always fall back to regular page_pool_alloc_netmems()
+	 * regardless of the MTU / FQ buffer size.
+	 */
+	if (pp->flags & PP_FLAG_ALLOW_UNREADABLE_NETMEM)
+		fq->truesize = pp->max_len;
+
 	return true;
 }
 
+/**
+ * libeth_rx_page_pool_check_unread - check input params for unreadable MPs
+ * @fq: buffer queue to check
+ * @pp: &page_pool_params for the queue
+ *
+ * Make sure we don't create an invalid pool with full-frame unreadable
+ * buffers, bidirectional unreadable buffers or so, and configure the
+ * ZC payload pool accordingly.
+ *
+ * Return: true on success, false on invalid input params.
+ */
+static bool libeth_rx_page_pool_check_unread(const struct libeth_fq *fq,
+					     struct page_pool_params *pp)
+{
+	if (!netif_rxq_has_unreadable_mp(pp->netdev, pp->queue_idx))
+		return true;
+
+	/* For now, the core stack doesn't allow XDP with unreadable frags */
+	if (fq->xdp)
+		return false;
+
+	/* It should be either a header pool or a ZC payload pool */
+	if (fq->type == LIBETH_FQE_HDR)
+		return !fq->hsplit;
+
+	pp->flags |= PP_FLAG_ALLOW_UNREADABLE_NETMEM;
+
+	return fq->hsplit;
+}
+
 /**
  * libeth_rx_fq_create - create a PP with the default libeth settings
  * @fq: buffer queue struct to fill
@@ -165,6 +204,9 @@ int libeth_rx_fq_create(struct libeth_fq *fq, struct napi_struct *napi)
 	struct page_pool *pool;
 	int ret;
 
+	if (!libeth_rx_page_pool_check_unread(fq, &pp))
+		return -EINVAL;
+
 	pp.dma_dir = fq->xdp ? DMA_BIDIRECTIONAL : DMA_FROM_DEVICE;
 
 	if (!fq->hsplit)
-- 
2.53.0

