Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5034DA90DA2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 23:19:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0E6D6F5C3;
	Wed, 16 Apr 2025 21:19:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rIgGpQp5ADTg; Wed, 16 Apr 2025 21:19:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDE886F67A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744838345;
	bh=FYv3Yz6f2Lx4l8HMnmsPW+DYRYYIeLl2+4r+qFA60J0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Yq4fyb1BPchf9QSN60IOjQHI9ushXqf9o1qzm86nstdsd34+o6fJclrqa0Yh45kgZ
	 7QzHtDKU/VfnO7QV4dAQqqlE6QjesObmNo4kn83goAZVsKovAgGNVz2UcRvXhD+i7+
	 pi5aZexpilyKiGmOxvXGVkQSnETcpvPTuTz9apfVaDLHMDV/Ezr6oh/rrwk5JnZ7QX
	 N9URf8Mpk+G97TKEqioAGVrHOTERlrrf9vY+jdVSlXOWc5badoqQfKI/jzHSwL1knj
	 tWo7SlBjlSX5PFwEfnIYQ2itjsvFgim1KJ28yBsszF8/v8zIp1etH3hUvIkR0rklSa
	 Q6bg5W7GSac4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDE886F67A;
	Wed, 16 Apr 2025 21:19:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id DA04E11B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 21:19:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BDB676F592
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 21:19:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O8DuwymhXJzH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 21:19:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1634F60D7F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1634F60D7F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1634F60D7F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 21:19:02 +0000 (UTC)
X-CSE-ConnectionGUID: jRlWAJs+S7OgWijLZcU1GQ==
X-CSE-MsgGUID: vkVx0slrSsamJT0IG9xuxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46496239"
X-IronPort-AV: E=Sophos;i="6.15,217,1739865600"; d="scan'208";a="46496239"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 14:19:01 -0700
X-CSE-ConnectionGUID: CyX04dYKTE6pfXYV4iyKgw==
X-CSE-MsgGUID: q/Xp4i7nQbK22U+TRcPT0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,217,1739865600"; d="scan'208";a="130909756"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by fmviesa008.fm.intel.com with ESMTP; 16 Apr 2025 14:19:01 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, milena.olech@intel.com, anton.nadezhdin@intel.com,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Wed, 16 Apr 2025 14:18:17 -0700
Message-ID: <20250416211821.444076-6-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250416211821.444076-1-pavan.kumar.linga@intel.com>
References: <20250416211821.444076-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744838342; x=1776374342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0gxXFAuin1vwi+251UPyfz/JczORT+jQZxMwXsNW06Y=;
 b=axGzyijqFMqCKiglNw7hIhhHjwFJKmfkJuObIANy7QKDE1BTHdhnZPXW
 qBIHH+Sh5Pun18SW8h8ZeXt5LuOSU3TsjArMsr5blDbkkcKc9Q4iY55Jx
 zRhknOk7oTxVSIFlMYdBzj3VfQFqFwX1e9iJRcNpxKIaFQDf4eJls3WM1
 KyJqCvycaTkFf15/pzEFA9HxP57B2/lLOm+swAp4DW+9UxbtMmSagW0DI
 fkTQNmZuu19dzVjqGklNEaS3drE/GQ8fmyEm7puDa73czKEPrv1ITP8HA
 cJmphd2gRavT2+0KEJzTTBuRfHxkXmWIddsvENKJ7TnOoGnwY8VSI6+zc
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=axGzyijq
Subject: [Intel-wired-lan] [PATCH iwl-next 5/9] idpf: reshuffle idpf_vport
 struct members to avoid holes
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

The previous refactor of moving queue and vector resources
out of the idpf_vport structure, created few holes. Reshuffle
the existing members to avoid holes as much as possible.

Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h | 27 +++++++++++++-------------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 2bd1d35ee263..28d9c08420a3 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -303,50 +303,49 @@ struct idpf_q_vec_rsrc {
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

