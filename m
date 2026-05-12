Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDyKLI40A2oA1gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 16:09:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 653F9521FD9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 16:09:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D5D440C26;
	Tue, 12 May 2026 14:09:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0-O0A0Z0T25s; Tue, 12 May 2026 14:09:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA03540B1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778594953;
	bh=IefGUnnTh3jK/rP1/+Aggv4K1i4msw6pBz4ot+ONLZs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Eh7vRZQNjo6Q7YheZsB8iTd1dxPPO/RKQ6num7L9CQ3LNO58g0ylZHFw2q2qKkDuq
	 hx6yJyPJRrZhtl1+M+TbiaQ8AueD3wZFahFfS+vkSy6qfomN7Rqu5qNux6hgvzvxey
	 zUvB/JTRh4jgu1gpmHFpk8Ma79Lb3xATOCDe+TWK4tb62oV3cOyztKZ3DXZMtDknMh
	 XJxz697BOkCUABotxhKyw9DKvHtqc9dLTFOgLX+F3/AiZuYFH3dDbIKuICvdcNnwpD
	 eAdvTCVnQxsVbs25eXRF7Jaw2HRg8tlMIxChnlmCnQMjBaJ+WfZy8oX+YdavtKI19g
	 ZbmIVIvZK2iyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA03540B1C;
	Tue, 12 May 2026 14:09:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D18B223
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3EAC560DAD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3L13_eNZYb1r for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2026 14:09:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 01E9060DAA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01E9060DAA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 01E9060DAA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:09 +0000 (UTC)
X-CSE-ConnectionGUID: tZEFKT5ISw+U2y9aTmty+Q==
X-CSE-MsgGUID: xIVrlWNnRXCB4V/XzbU/UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="96929656"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="96929656"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 07:09:09 -0700
X-CSE-ConnectionGUID: D/4kVDM+TnyCxThvEfzQOQ==
X-CSE-MsgGUID: IAYq5IS4QWy1JjpFoOLmoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="275892471"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa001.jf.intel.com with ESMTP; 12 May 2026 07:09:08 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Simon Horman <horms@kernel.org>
Date: Tue, 12 May 2026 16:08:57 +0200
Message-ID: <20260512140904.4105236-2-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260512140904.4105236-1-aleksandr.loktionov@intel.com>
References: <20260512140904.4105236-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778594950; x=1810130950;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nBacYxhuC6bRW2k/59nME7qF1sTS/76EbllfIfcCE0w=;
 b=KOFUtDd3wzhXSCZRVdIjFq3bOGxkspSKzlMci9tYHELCFLCwHWgKVZZl
 raS4R6Kd7nAWRytDxxzUGZ0XQsITxtOnmNTnYRAEUwzeqxvAbCnQ4oich
 5B+0d9n5I2V0B8qd8g8n9OihM8wanyxbK/9SwRLThl2BUxcgr9edCGRUf
 fYs1pySjFDF3pyFa7W2CLUSfnZu4gS9QxzuvmLs7uyfyxHVr4kEzfAB1x
 f/7KTw/2OjFrWAB85kKxmAtRuehLGmTWk8DA16hUM6vTMb/iP3knI9YXY
 qIyRUsRtU80anz0okWphrBZ7dzty/h8f+NC5Fz8SRhIBc9RIRKjaTa+Ry
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KOFUtDd3
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/8] ixgbe: rename numa_node
 to node in struct ixgbe_q_vector
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
X-Rspamd-Queue-Id: 653F9521FD9
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
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
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
Reviewed-by: Simon Horman <horms@kernel.org>
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

