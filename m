Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GUxKFje/WmqkAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 15:00:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BBB4F6B10
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 15:00:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C86F4106B;
	Fri,  8 May 2026 12:59:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vgEIHw-_ih0r; Fri,  8 May 2026 12:59:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9749410AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778245197;
	bh=vbQw2y7v23UaXpxycIQfCM4aoDdmvIwGc+GKDcKE2YI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CwbTnYmRIFDaq3UMFE6+b5yEfLYfzR94of4M7YPqlpoNggFqCSGLpzUJr0WNz1MUp
	 b9EnCdD0BFIdnxzQ91oFQ3hb+Ud5m2jo97RtDre7lWj5yhR6hh+O74DLRWji+1aAvy
	 TO+Jz+GLHvEXXOQShuTM3Ryi/3ZVEXv7kHDyGnQPBxwu30blzwSvkEEHQat0T2Epjq
	 ko6zOeAFsfakmEIH6Ji4Ab4zNHgOAp8rR5lWdA1NiP1TzPdROVQiEUBj5PecB7HBnL
	 rOqRbY+291w+1mhWfgko/R7GtiqkjsBKx/0XChmQtQcK7opfK1CYa1WN5psSmwdBqY
	 oSap3ruDF+sqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9749410AA;
	Fri,  8 May 2026 12:59:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 04998317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:59:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 01DA940F62
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:59:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c-U0S3UUaH4k for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 12:59:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2D89841053
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D89841053
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2D89841053
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:59:55 +0000 (UTC)
X-CSE-ConnectionGUID: UHMCuz7cSgesJFTuXRoZCA==
X-CSE-MsgGUID: NmEqXQpMQZOFgM8eFzzKpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79199931"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79199931"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 05:59:55 -0700
X-CSE-ConnectionGUID: swZOTk4ZQf2P85VUdshBQQ==
X-CSE-MsgGUID: wubMeUzcSOiZStO1K992YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241730132"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 08 May 2026 05:59:49 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 7C8272FC44;
 Fri,  8 May 2026 13:59:47 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Michal Schmidt <mschmidt@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 bruce.richardson@intel.com,
 Vladimir Medvedkin <vladimir.medvedkin@intel.com>,
 padraig.j.connolly@intel.com, ananth.s@intel.com,
 timothy.miskell@intel.com, Jacob Keller <jacob.e.keller@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri,  8 May 2026 14:42:01 +0200
Message-Id: <20260508124208.11622-9-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
References: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778245196; x=1809781196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MHtnV2d7on0QOsG7JkOnFzWyzfm4So4mltVlVNW1uq0=;
 b=a+xtx97B0IBzfliOEfHlRQ/jsAQSCEfFIY3vh8e2rzFhY16VFz+dpgmk
 CRCVzXfsBkCJi0edQbe03ocQ9IA2V7zt0iKQaSABfRo8r2AM6Equmrb3X
 BwxX0NmqmXhWE9Al+WYXCgH2f2Ru3x3FXKIhJWLBmWCdnkulY5LIfInGj
 bh2P+lvlgGOo6oLIL2QJt1/YVqQEVUkJdlL7xTHyZjlimVLHuZnkcwU1x
 Sv/MhVxN/ZmyxcUZ4FidpzkGsTVRQiYM1z8zLN5d4Zd7imWmFG4HhbcOZ
 dVTfpGhwfQ8+3/Hu0Nr+DfK8qjGnkwMZml+ROsdUrFSHXy7ExD4q2yvmh
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a+xtx97B
Subject: [Intel-wired-lan] [PATCH iwl-next v1 08/15] iavf: extend
 iavf_configure_queues() to support more queues
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
X-Rspamd-Queue-Id: 70BBB4F6B10
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.989];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

Extend iavf_configure_queues() to support more than 31 queues.
Virtchnl opcode used was already generic, but we have just not needed
more than one message before.

Add helper, iavf_max_vc_entries(), that determines how many entries we
could fit into virtchnl message (ending by flex array member). Will be
also used on another op later in this series.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 55 +++++++++++++++----
 1 file changed, 45 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index a2f75bb4a74e..7a97fc76420f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -8,6 +8,11 @@
 #include "iavf_ptp.h"
 #include "iavf_prototype.h"
 
+/* how many Flex Array Member entires do fit into VC message of type *ptr */
+#define iavf_max_vc_entries(ptr, flex_member) \
+	((IAVF_MAX_AQ_BUF_SIZE - virtchnl_struct_size(ptr, flex_member, 1)) / \
+	 sizeof(ptr->flex_member[0]) + 1)
+
 /**
  * iavf_send_pf_msg
  * @adapter: adapter structure
@@ -366,6 +371,14 @@ int iavf_get_vf_ptp_caps(struct iavf_adapter *adapter)
 	return err;
 }
 
+static bool iavf_match_vc_op_cb(struct iavf_adapter *adapter, const void *data,
+				enum virtchnl_ops recv_op)
+{
+	enum virtchnl_ops wanted_op = (enum virtchnl_ops)data;
+
+	return recv_op == wanted_op;
+}
+
 /**
  * iavf_configure_queues
  * @adapter: adapter structure
@@ -377,8 +390,9 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 	struct virtchnl_vsi_queue_config_info *vqci;
 	int pairs = adapter->num_active_queues;
 	struct virtchnl_queue_pair_info *vqpi;
-	u32 i, max_frame;
 	u8 rx_flags = 0;
+	u32 max_frame;
+	int max_pairs;
 	size_t len;
 
 	max_frame = LIBIE_MAX_RX_FRM_LEN(adapter->rx_rings->pp->p.offset);
@@ -390,22 +404,22 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 			adapter->current_op);
 		return;
 	}
-	adapter->current_op = VIRTCHNL_OP_CONFIG_VSI_QUEUES;
-	len = virtchnl_struct_size(vqci, qpair, pairs);
+
+	max_pairs = iavf_max_vc_entries(vqci, qpair);
+	len = virtchnl_struct_size(vqci, qpair, min(pairs, max_pairs));
 	vqci = kzalloc(len, GFP_KERNEL);
 	if (!vqci)
 		return;
 
 	if (iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_RX_TSTAMP))
 		rx_flags |= VIRTCHNL_PTP_RX_TSTAMP;
 
 	vqci->vsi_id = adapter->vsi_res->vsi_id;
-	vqci->num_queue_pairs = pairs;
 	vqpi = vqci->qpair;
-	/* Size check is not needed here - HW max is 16 queue pairs, and we
-	 * can fit info for 31 of them into the AQ buffer before it overflows.
-	 */
-	for (i = 0; i < pairs; i++) {
+
+	for (int i = 0, in_msg = 0; i < pairs; i++) {
+		const bool last = i + 1 == pairs;
+
 		vqpi->txq.vsi_id = vqci->vsi_id;
 		vqpi->txq.queue_id = i;
 		vqpi->txq.ring_len = adapter->tx_rings[i].count;
@@ -423,11 +437,32 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 						   NETIF_F_RXFCS);
 		vqpi->rxq.flags = rx_flags;
 		vqpi++;
+		in_msg++;
+		if (last || in_msg == max_pairs) {
+			int err;
+
+			adapter->current_op = VIRTCHNL_OP_CONFIG_VSI_QUEUES;
+			vqci->num_queue_pairs = in_msg;
+
+			iavf_send_pf_msg(adapter,
+					 VIRTCHNL_OP_CONFIG_VSI_QUEUES,
+					 (u8 *)vqci,
+					 virtchnl_struct_size(vqci, qpair, in_msg));
+			err = iavf_poll_virtchnl_response(adapter,
+							  iavf_match_vc_op_cb,
+							  (void *)VIRTCHNL_OP_CONFIG_VSI_QUEUES,
+							  1000);
+			if (err)
+				dev_warn(&adapter->pdev->dev,
+					 "config queues poll failed, err: %d\n",
+					 err);
+
+			vqpi = vqci->qpair;
+			in_msg = 0;
+		}
 	}
 
 	adapter->aq_required &= ~IAVF_FLAG_AQ_CONFIGURE_QUEUES;
-	iavf_send_pf_msg(adapter, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
-			 (u8 *)vqci, len);
 	kfree(vqci);
 }
 
-- 
2.39.3

