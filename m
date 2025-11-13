Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5F9C54E73
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Nov 2025 01:31:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13CF540C40;
	Thu, 13 Nov 2025 00:31:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TIbZ3bsIBczh; Thu, 13 Nov 2025 00:31:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C0DD40C30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762993864;
	bh=Epto7NgW6goag2FvUfRWlh881La0QnnbbcVK91PulHc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nZUwMC7dL4yj6kA2K3tjNIH6YYXynRYHHCAMJyd+qha/oSdM3oIlMZ0XBTEGPTGqM
	 5hQf0skw0SI4v0/xjEjU8IuIyG7wGciANIkRtSRGdqLuru9sHhpsFUUqBGt2TXLqD/
	 jkd5ZUwsNkgFcVAj+v2/HbKAm9sO2uwkrx75/uCHrvFbVOlZaYECwqFvbUhF4LURTD
	 xX6rQ4aIqLSKL/CRVocko12EUyXZIs6T0qM0b2bhG6kAasOqn3KPpbGkFtyAEpEq1k
	 oGzpJ3k/hUDTE+8Wf9f+V9OwRHHxbnAT0ddk/xBJIbiVh7bM5AH2DCW5XBoIHSHw0x
	 e9CbhP6qJ+Ylg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C0DD40C30;
	Thu, 13 Nov 2025 00:31:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2849A230
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 00:31:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CF67A6066C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 00:30:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6TNo8N0O2bAg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Nov 2025 00:30:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1450560866
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1450560866
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1450560866
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 00:30:58 +0000 (UTC)
X-CSE-ConnectionGUID: gGPIqiLaQqeLoK3D8p171Q==
X-CSE-MsgGUID: 8lxCU+zJS9+3JJEfNp8QnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="82465658"
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="82465658"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 16:30:57 -0800
X-CSE-ConnectionGUID: 4oJNCHVZQhKR3SgQl1CWLw==
X-CSE-MsgGUID: iwNM2FCrROOYD7jVMS8gUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="190099556"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by fmviesa010.fm.intel.com with ESMTP; 12 Nov 2025 16:30:57 -0800
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Wed, 12 Nov 2025 16:41:38 -0800
Message-Id: <20251113004143.2924761-6-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20251113004143.2924761-1-joshua.a.hay@intel.com>
References: <20251113004143.2924761-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762993859; x=1794529859;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kbcd1olDLTbNyz5MlvSyuJZcGM4GuRep8YUj1HKvnd8=;
 b=fBxUojPu08jpZ/OHhtGCRBTBCXX+JAPMyBwwLWnqPouAXqBF85rbgy5U
 ZGJQc0mTMw7mgFsj5y0vxdO02lXP+Ji6lFydORKmL+urkLwkaz6jsdM8V
 NmzYP2W5SDgvKMYabQdfs80ZydmwVF6zhRsFyTFi2btfEqwMhV/HmieOs
 wCdLk9shEi/NHOqBg/K042mvSKs3ClY6Efv4ZowuI1m43+3mRlcOWn/H7
 fuWWezsbbwaY5sDwW2iklalV0v8VVWu/0zjrFQzobxO4s+YziWW/cpxHn
 eQ+M2pplM5ZDC2rgv/LXEWp6Cj6W7RVHLNdyH321qSQ8l5HJEJxh9IJm5
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fBxUojPu
Subject: [Intel-wired-lan] [PATCH iwl-next v10 05/10] idpf: reshuffle
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

From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

The previous refactor of moving queue and vector resources out of the
idpf_vport structure, created few holes. Reshuffle the existing members
to avoid holes as much as possible.

Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
v8: rebase on AF_XDP series
---
 drivers/net/ethernet/intel/idpf/idpf.h | 32 ++++++++++++--------------
 1 file changed, 15 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 781e0c8dbc2f..4e6ab58b70e7 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -347,29 +347,29 @@ struct idpf_q_vec_rsrc {
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
  * @vdev_info: IDC vport device info pointer
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
@@ -378,34 +378,32 @@ struct idpf_q_vec_rsrc {
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
 	struct iidc_rdma_vport_dev_info *vdev_info;
 
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
2.39.2

