Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27967AB058A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 23:51:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB6814154D;
	Thu,  8 May 2025 21:50:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w3K7QJs1VXQ7; Thu,  8 May 2025 21:50:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4633241545
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746741059;
	bh=jdc0WpR0icbgcFc3dIX7DHZcTBBqEQCPxJBQsytuZBQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mKvJZaowexQG5jNCBisGD9+r5hFvcD7zcGIEo2M1YCvPIFvkyUXCd7C+6k+dUA4it
	 UWFc4/8ceV1KWe1bPpjQIfXbBnOh7X/IPOr9pVnCupa48ztsbNV2/HXXTkJWjiuSIn
	 uDHQg1/LRwyHKBqIYbO3YtZlfiSm+ShBQI3UNLNBM7yO93tDY5tPgHUiyUydoxY0C0
	 xUeACr7aNrUHOCgykAJtsiSoU1s1jDZ40tG7xZVK48er8Ki702p7zxYXUydFi7MLo6
	 KKolj0n8ygU61OSK+2IixLX9egsYxfblK3lAvuoQfAJw8PmeU8RZgDgsnOHHYDJt7d
	 Yw+HjnIivfrwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4633241545;
	Thu,  8 May 2025 21:50:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F52AD94
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 21:50:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 090DA41523
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 21:50:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lt2ORRdTlhWR for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 21:50:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5744E41524
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5744E41524
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5744E41524
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 21:50:51 +0000 (UTC)
X-CSE-ConnectionGUID: 079DUw3iR/Sfxrn5fReKxQ==
X-CSE-MsgGUID: 7h18UPgRQQGStYVDIEDLDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="47808325"
X-IronPort-AV: E=Sophos;i="6.15,273,1739865600"; d="scan'208";a="47808325"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 14:50:50 -0700
X-CSE-ConnectionGUID: Nl4zLE++RH+xefVbRtZUgg==
X-CSE-MsgGUID: WTLarzd/SBuQQHTzGpoZcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,273,1739865600"; d="scan'208";a="141534280"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by orviesa005.jf.intel.com with ESMTP; 08 May 2025 14:50:49 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, milena.olech@intel.com, anton.nadezhdin@intel.com,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Thu,  8 May 2025 14:50:09 -0700
Message-ID: <20250508215013.32668-6-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250508215013.32668-1-pavan.kumar.linga@intel.com>
References: <20250508215013.32668-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746741052; x=1778277052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7gqMymAVnIrvrkHyvlsiZ//G1rC3/gyHDyZvYIRk38o=;
 b=hkG/tovE0+2/swQOqJOvPQmame4TXqRQxgwL2GQK7VELovXtH5v3zO/l
 q4WkihqiU4UnC2ZcJkAfb+fPcl8cHeXR0dJOvKWYTQrUWUwJzvb2H/dCm
 gDVk+b5E4wwBR5qptdGoh2MC9tLRLqsH5SKhQ3SXHMz/4p3QNVGZVzgHm
 9mSaOTtxWbUe+5mUeYQpOOSiK4iL2ZG/mnpKMyzFFXLQLFcf/rNKi9Os7
 4vzzQIgeA/W80z+fM5e71OdZ8mBxIeSN6xivrm+AyDrpz5b28vdlHj6aS
 uy6OS+FxZ3obTQbJqQxyylYIEMSDDoKhkTN3Dj6YQcbjC/wQUTP2Sv/g4
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hkG/tovE
Subject: [Intel-wired-lan] [PATCH iwl-next v4 5/9] idpf: reshuffle
 idpf_vport struct members to avoid holes
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

The previous refactor of moving queue and vector resources out of the
idpf_vport structure, created few holes. Reshuffle the existing members
to avoid holes as much as possible.

Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h | 27 +++++++++++++-------------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 8e13cf29dec7..188bd8364080 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -325,24 +325,24 @@ struct idpf_q_vec_rsrc {
 /**
  * struct idpf_vport - Handle for netdevices and queue resources
  * @dflt_qv_rsrc: contains default queue and vector resources
- * @num_txq: Number of allocated TX queues
- * @compln_clean_budget: Work budget for completion clean
  * @txqs: Used only in hotpath to get to the right queue very fast
- * @crc_enable: Enable CRC insertion offload
- * @rx_ptype_lkup: Lookup table for ptypes on RX
  * @adapter: back pointer to associated adapter
  * @netdev: Associated net_device. Each vport should have one and only one
  *	    associated netdev.
  * @flags: See enum idpf_vport_flags
- * @vport_type: Default SRIOV, SIOV, etc.
+ * @compln_clean_budget: Work budget for completion clean
  * @vport_id: Device given vport identifier
+ * @vport_type: Default SRIOV, SIOV, etc.
  * @idx: Software index in adapter vports struct
- * @default_vport: Use this vport if one isn't specified
+ * @num_txq: Number of allocated TX queues
  * @max_mtu: device given max possible MTU
  * @default_mac_addr: device will give a default MAC to use
  * @rx_itr_profile: RX profiles for Dynamic Interrupt Moderation
  * @tx_itr_profile: TX profiles for Dynamic Interrupt Moderation
+ * @rx_ptype_lkup: Lookup table for ptypes on RX
  * @port_stats: per port csum, header split, and other offload stats
+ * @default_vport: Use this vport if one isn't specified
+ * @crc_enable: Enable CRC insertion offload
  * @link_up: True if link is up
  * @sw_marker_wq: workqueue for marker packets
  * @tx_tstamp_caps: Capabilities negotiated for Tx timestamping
@@ -352,27 +352,26 @@ struct idpf_q_vec_rsrc {
  */
 struct idpf_vport {
 	struct idpf_q_vec_rsrc dflt_qv_rsrc;
-	u16 num_txq;
-	u32 compln_clean_budget;
 	struct idpf_tx_queue **txqs;
-	bool crc_enable;
-
-	struct libeth_rx_pt *rx_ptype_lkup;
 
 	struct idpf_adapter *adapter;
 	struct net_device *netdev;
 	DECLARE_BITMAP(flags, IDPF_VPORT_FLAGS_NBITS);
-	u16 vport_type;
+	u32 compln_clean_budget;
 	u32 vport_id;
+	u16 vport_type;
 	u16 idx;
-	bool default_vport;
 
+	u16 num_txq;
 	u16 max_mtu;
 	u8 default_mac_addr[ETH_ALEN];
 	u16 rx_itr_profile[IDPF_DIM_PROFILE_SLOTS];
 	u16 tx_itr_profile[IDPF_DIM_PROFILE_SLOTS];
-	struct idpf_port_stats port_stats;
 
+	struct libeth_rx_pt *rx_ptype_lkup;
+	struct idpf_port_stats port_stats;
+	bool default_vport;
+	bool crc_enable;
 	bool link_up;
 
 	wait_queue_head_t sw_marker_wq;
-- 
2.43.0

