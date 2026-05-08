Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGiQOKVU/WnZagAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 05:12:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9A84F102F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 05:12:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D12BC41456;
	Fri,  8 May 2026 03:12:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SzkSh08OSpEY; Fri,  8 May 2026 03:12:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 447344144D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778209954;
	bh=BM0lC/eM+KNhKyk/zHF1gP0RQ/e9DK15gxiJpEos/pA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yRF7ieOtIFMIsUK9gA2jEa7rk+YgBk229OYQoVSNMbHdj80MevB1TQ1ZkY4/N5a/W
	 4HufHq5vyIvGAUAK5ewPG009I9oW/aHI4uDIufFvENylqyPlZcKAIv2Z9S8kqjU5QA
	 iQC7iyervdIJ3RuBmvAzfbcKd39lD6C+zNOQS562cD9UjZQzQSEBfT/C2a8zvNqvhy
	 5XWdhdkj9uDoZfnlblbaA3MP4s9iIQo9VCZvqewrh5wNKet7XxPWv3avfX5HMoigFu
	 +26N8pHyd2QiqS+hFrPokYbQN8WMFlokdytYog/ulsaVadF1UAHiUYYDGPaXiZoo1O
	 kYvFGneesVdrg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 447344144D;
	Fri,  8 May 2026 03:12:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CA3C8317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 03:12:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CAE7B4030E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 03:12:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2YXpTYytuFTs for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 03:12:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CF3E3409B3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF3E3409B3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF3E3409B3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 03:12:30 +0000 (UTC)
X-CSE-ConnectionGUID: p76Nqu+XQXaC/t4iJo5VpQ==
X-CSE-MsgGUID: alQlXLbQTu2xrPAxpu55tQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79027486"
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="79027486"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 20:12:31 -0700
X-CSE-ConnectionGUID: w6ebjILARD2ObegaZgr2cg==
X-CSE-MsgGUID: y8qMGA66S7OEbHkF54q1mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="241623175"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa005.fm.intel.com with ESMTP; 07 May 2026 20:12:29 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Jacob Keller <jacob.e.keller@intel.com>
Date: Fri,  8 May 2026 05:12:19 +0200
Message-ID: <20260508031226.3601800-2-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260508031226.3601800-1-aleksandr.loktionov@intel.com>
References: <20260508031226.3601800-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778209951; x=1809745951;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1fz/pNUwDSH6iIhkeVb5RNFaw1xF4u6b6e7E26vW+kc=;
 b=ZXvwHq9Xn9530n6HqDX40dy29EuOWNRR5l3Cwe6A3cqXfwWqocma9UJl
 uZ4OOQELfc4N9MB6I8XP0DqkuMJtkb44LmYiM7Jf7wjuYkm3hvAjwNrWE
 XtdXL7ZCTzy4N49qRq/XD9jmuDDjQIAfbNQ1HdsHwojvQrGn3eonqg9d+
 4sOwJhyscu35rm4mp7VClj7mJhMOgpSQBh4Ixlxaa9IIrqiAcZTmczL9J
 toDHBmhxBtt0ARZkxuFPv4ke1c8/YONtW11/MPlTWAImeLI3h41jRJhVs
 HgYLcqfaFcWYxi07+yiuiVoNMJe6bcV0JJPy3rnaUljfdP4Wxvkk5nvkA
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZXvwHq9X
Subject: [Intel-wired-lan] [PATCH iwl-next 1/8] ixgbe: rename numa_node to
 node in struct ixgbe_q_vector
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
X-Rspamd-Queue-Id: 5C9A84F102F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

From: Jacob Keller <jacob.e.keller@intel.com>

The 'numa_node' field in struct ixgbe_q_vector shadows the 'numa_node'
accessor for struct device, which triggers a sparse warning about
shadowing a built-in object.  The stored value here is a plain NUMA
node number, not a device attribute, so rename it to 'node' to avoid
the shadow and keep the naming consistent with other Intel drivers.

Update all three usage sites in ixgbe_lib.c and ixgbe_main.c.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 9b82175..cf2df18 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -515,7 +515,7 @@ struct ixgbe_q_vector {
 	struct rcu_head rcu;	/* to avoid race with update stats on free */
 
 	cpumask_t affinity_mask;
-	int numa_node;
+	int node;
 	char name[IFNAMSIZ + 9];
 
 	/* for dynamic allocation of rings associated with this q_vector */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
index 1db4bd5..5a4f05d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
@@ -864,7 +864,7 @@ static int ixgbe_alloc_q_vector(struct ixgbe_adapter *adapter,
 	/* setup affinity mask and node */
 	if (cpu != -1)
 		cpumask_set_cpu(cpu, &q_vector->affinity_mask);
-	q_vector->numa_node = node;
+	q_vector->node = node;
 
 #ifdef CONFIG_IXGBE_DCA
 	/* initialize CPU for DCA */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 2646ee6..65426a1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -7074,7 +7074,7 @@ int ixgbe_setup_tx_resources(struct ixgbe_ring *tx_ring)
 	size = sizeof(struct ixgbe_tx_buffer) * tx_ring->count;
 
 	if (tx_ring->q_vector)
-		ring_node = tx_ring->q_vector->numa_node;
+		ring_node = tx_ring->q_vector->node;
 
 	tx_ring->tx_buffer_info = vmalloc_node(size, ring_node);
 	if (!tx_ring->tx_buffer_info)
@@ -7175,7 +7175,7 @@ int ixgbe_setup_rx_resources(struct ixgbe_adapter *adapter,
 	size = sizeof(struct ixgbe_rx_buffer) * rx_ring->count;
 
 	if (rx_ring->q_vector)
-		ring_node = rx_ring->q_vector->numa_node;
+		ring_node = rx_ring->q_vector->node;
 
 	rx_ring->rx_buffer_info = vmalloc_node(size, ring_node);
 	if (!rx_ring->rx_buffer_info)
-- 
2.52.0

