Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8AE8AFBF97
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 02:58:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EA49840D4;
	Tue,  8 Jul 2025 00:58:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 82QHsTGr9FDX; Tue,  8 Jul 2025 00:58:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F4227840DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751936338;
	bh=jkFjMUJsmhwMjZOXkjfSG2fLNLMJpppVGwaCkKNMQfU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SefgtTqkw39u7jSgZbyJdS6UfU4Q4ARiWOhuyP0660J0bOE3ZLsR27CdyW3UtDG1+
	 aUTld+pRecucrMbkpvDyDzcku/0umMGlkUgt3//uTXeL0cNECdba8djZl/Z/8m48Du
	 nkeGfKJ/OquDUPEMFBWvwe3b8tNgvKie9paG0NdcMZh7uDPQLxApgX7L+AXKtr0eY7
	 70bXzIO9b/j3ok9QhzpBh4u+I69uGj/+77xC8GpNlI9495gYHTfPviLby93bPtf67M
	 H2MDIftQAvtbSkOw/xFbtMCU/qese/CTp5XJThhWeFDPOaG4KrlLp6Zktt2ZtnHCpd
	 gasl0VVBqU4LQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F4227840DA;
	Tue,  8 Jul 2025 00:58:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4DDF115F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 00:58:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 98B4B40EB2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 00:58:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aSxTDSysU4U0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 00:58:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EF9C0404CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF9C0404CD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EF9C0404CD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 00:58:50 +0000 (UTC)
X-CSE-ConnectionGUID: 4i1jG9bfS8aGDDBl8kNrRA==
X-CSE-MsgGUID: 7EoXQAhXRr+kdZ7Rw4tTrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="54307580"
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; d="scan'208";a="54307580"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 17:58:47 -0700
X-CSE-ConnectionGUID: bYQoar7cTIeuD9oWy1Z5gg==
X-CSE-MsgGUID: sfxZplqpRIOXQbjKpoo+zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; d="scan'208";a="159695502"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by orviesa003.jf.intel.com with ESMTP; 07 Jul 2025 17:58:47 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Mon,  7 Jul 2025 17:58:33 -0700
Message-ID: <20250708005837.18510-6-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250708005837.18510-1-pavan.kumar.linga@intel.com>
References: <20250708005837.18510-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751936331; x=1783472331;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ORI6uqzy/jbdI0v0N9JipqSYvtK0FpC/Oq8Pil+D4Ho=;
 b=Xm/kgmaxIFe9BJDSS+qcCDNj/2H8jsUcUP10G8dQpbtxiy49S20lkgua
 2voYyidkw26QYnZU6rEALqMkyFJrOh2hX/VBzSx+yEfhqQ6jxTtiW5lBN
 fkY63mVjP1oB0YpF686BVBMbog9gD+NU2PqsToAgSFHQcO+c9UhZ0VKzW
 m6NmVY6zvYMOt1WoqHlQFtUHH1IRU8KRWCL1amZjf7FYmpbouzop8W9uO
 Are6Fd1JnanQGLiLblDJK8Ia0jmnQJ1ddWQpJl56rx+e8bJ10iFLwmopw
 7YyvbrXg/Ov/N/sKjmqpwRVUK8xIZ/XBXmK5CXAQ/p3gj0aqQM4VfH3Va
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xm/kgmax
Subject: [Intel-wired-lan] [PATCH net-next v6 5/9] idpf: reshuffle
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
 drivers/net/ethernet/intel/idpf/idpf.h | 32 ++++++++++++--------------
 1 file changed, 15 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 4d5dfef30f49..510897dc1d40 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -315,28 +315,28 @@ struct idpf_q_vec_rsrc {
 /**
  * struct idpf_vport - Handle for netdevices and queue resources
  * @dflt_qv_rsrc: contains default queue and vector resources
- * @num_txq: Number of allocated TX queues
- * @compln_clean_budget: Work budget for completion clean
  * @txqs: Used only in hotpath to get to the right queue very fast
- * @crc_enable: Enable CRC insertion offload
- * @xdpsq_share: whether XDPSQ sharing is enabled
+ * @num_txq: Number of allocated TX queues
  * @num_xdp_txq: number of XDPSQs
  * @xdp_txq_offset: index of the first XDPSQ (== number of regular SQs)
+ * @xdpsq_share: whether XDPSQ sharing is enabled
  * @xdp_prog: installed XDP program
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
  * @max_mtu: device given max possible MTU
  * @default_mac_addr: device will give a default MAC to use
  * @rx_itr_profile: RX profiles for Dynamic Interrupt Moderation
  * @tx_itr_profile: TX profiles for Dynamic Interrupt Moderation
+ * @rx_ptype_lkup: Lookup table for ptypes on RX
  * @port_stats: per port csum, header split, and other offload stats
+ * @default_vport: Use this vport if one isn't specified
+ * @crc_enable: Enable CRC insertion offload
  * @link_up: True if link is up
  * @tx_tstamp_caps: Capabilities negotiated for Tx timestamping
  * @tstamp_config: The Tx tstamp config
@@ -344,32 +344,30 @@ struct idpf_q_vec_rsrc {
  */
 struct idpf_vport {
 	struct idpf_q_vec_rsrc dflt_qv_rsrc;
-	u16 num_txq;
-	u32 compln_clean_budget;
 	struct idpf_tx_queue **txqs;
-	bool crc_enable;
-
-	bool xdpsq_share;
+	u16 num_txq;
 	u16 num_xdp_txq;
 	u16 xdp_txq_offset;
+	bool xdpsq_share;
 	struct bpf_prog *xdp_prog;
 
-	struct libeth_rx_pt *rx_ptype_lkup;
-
 	struct idpf_adapter *adapter;
 	struct net_device *netdev;
 	DECLARE_BITMAP(flags, IDPF_VPORT_FLAGS_NBITS);
-	u16 vport_type;
+	u32 compln_clean_budget;
 	u32 vport_id;
+	u16 vport_type;
 	u16 idx;
-	bool default_vport;
 
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
 
 	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
-- 
2.43.0

