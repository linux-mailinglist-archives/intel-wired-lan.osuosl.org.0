Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6048BA9F769
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 19:36:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4FB8081241;
	Mon, 28 Apr 2025 17:36:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7i1c8n5vrhwU; Mon, 28 Apr 2025 17:36:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6E2181236
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745861777;
	bh=rrO0iQzCC+bykUhNC1DXXmQ3h+uQKc5oA30Y5NMTgrg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VMz2fN36poVv69w5VYjgZTBGfXJUbgAqbg0YEsxo9nAngjfSzuXDJ4E7f18YD8WvR
	 CqdcWYQOwNGyz99mSzbN9k56sVVrN0QYxafFjI2vqgnuTWWAHj9KuvncToCeNQbFol
	 PDGbBmirgib+KQPCCIxhD/V88fyFxynirBqanLu3wNc/xoPYhsdjczJMEhN9Ao7DX3
	 jkmiV766jlvLQw305TidAJBg7wONgHNsQfWIseUrmpizwoQloLQshHZCM+E6Y6MZtc
	 aw/2uhhzwMjXEAHIbBVF38lxwougd25ByZKYVMCYnlMoOc3G1dA9GhO9ajCBRSYwoQ
	 Esb/XSrbdRbSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6E2181236;
	Mon, 28 Apr 2025 17:36:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id EE9FEC5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 17:36:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E109540FEC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 17:36:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7N5Rl2bQ7oRb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 17:36:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 22705409D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22705409D9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 22705409D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 17:36:14 +0000 (UTC)
X-CSE-ConnectionGUID: GsVl7RyVR3iE4ky9juc8Mw==
X-CSE-MsgGUID: CDg2oEHtSxCfhUh+/buc0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="58452164"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="58452164"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 10:36:13 -0700
X-CSE-ConnectionGUID: L+u2TA+oST2wkGv4ap1pyA==
X-CSE-MsgGUID: s/m5OxtrQ3esPsDIrWB8Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="138679033"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by fmviesa004.fm.intel.com with ESMTP; 28 Apr 2025 10:36:13 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, milena.olech@intel.com, anton.nadezhdin@intel.com,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Mon, 28 Apr 2025 10:35:48 -0700
Message-ID: <20250428173552.2884-6-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250428173552.2884-1-pavan.kumar.linga@intel.com>
References: <20250428173552.2884-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745861774; x=1777397774;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6A5I6ee9+wW9VXv222+jYTtgcusG76CERZnv59A8kD0=;
 b=Ux96O2mutgEXUHJT6MaCVv1fCe8RH0gmJxbShKYlOPUMeMPGr54I7pYp
 555gY5iNGOG8HWs6JdanuNt5jZOx5G4/Sf20bIWQvhIr6oEHatmZ230QQ
 JOx3GKFQ0+Dx1gUZqu2NVPCRDvtdhRYfvWCrYtPBHioFqkwTAKFwvCS9A
 cZ7cn7La9HSz0XkFYJzNrTgvmJMD/mpqbvPM06+0X4S/UsiJ23OcNSCF7
 DZRz8/m4K1QLOf9dzgmQRJTlwCkNkB9Z2WWJEVhSPiZ39O8FfyzmBx5Qz
 nVMdMqQVJy22ZjDIgz0VLLM4bpvgo2Dswo9E6Q+iDhptmPzXsDqK1018y
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ux96O2mu
Subject: [Intel-wired-lan] [PATCH iwl-next v3 5/9] idpf: reshuffle
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

The previous refactor of moving queue and vector resources
out of the idpf_vport structure, created few holes. Reshuffle
the existing members to avoid holes as much as possible.

Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h | 27 +++++++++++++-------------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index c81aba7d5256..e9f531c3b5ca 100644
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

