Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0861DBF9338
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 01:20:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DA55409F9;
	Tue, 21 Oct 2025 23:20:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QPAHtueoK-Z2; Tue, 21 Oct 2025 23:20:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA786409FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761088816;
	bh=GQMdP7LY9awNIV2wP1euDmc/t8qZjo9gXdoVkkPqjBI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wjN45DVlpsXJrumTagjv/ixgmobdxp5/7s5yYbZ53FXE2TpPE1HT+YLIcykX+UhGZ
	 IO/JS7NfIB0mo1Qt+/gDXl0XNU7UlLz4KeymImw0mvAAgXnUJll2EIGouV+e0Ndnae
	 IH2DRJzIbMf/pxq8opYVQm7kEEPPa7SObx9qc7m2zGU4fRM5xr0fXvZatfAbzc2sTZ
	 z9ILKE8akR/Vc/RB8QkMoYOXj6cwVie+vYxCpud2Y4R2kQjiqYZqebF183Z1R+YmDL
	 gMO6M2aUUNF9nRvAr+4cMWFZPp2CxvlKIJ6NEy7GNMHYRSccybUOTaFSD57wpUILsh
	 1L3kGtw69XRrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA786409FA;
	Tue, 21 Oct 2025 23:20:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1321D43F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 23:20:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EDEC860DE9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 23:20:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cS8NmxcR3S3M for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Oct 2025 23:20:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DD80260DD0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD80260DD0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD80260DD0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 23:20:12 +0000 (UTC)
X-CSE-ConnectionGUID: DzJy+o6hTey9BzMdERO9fw==
X-CSE-MsgGUID: UgB7wjWTTZ26fpjzGbFTAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74665329"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="74665329"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 16:20:12 -0700
X-CSE-ConnectionGUID: k/Fc7YD0TmmC4EEIbifhoA==
X-CSE-MsgGUID: 8If7L7GXTZWzAiasRngbcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="214352306"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by orviesa002.jf.intel.com with ESMTP; 21 Oct 2025 16:20:11 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Tue, 21 Oct 2025 16:30:51 -0700
Message-Id: <20251021233056.1320108-6-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20251021233056.1320108-1-joshua.a.hay@intel.com>
References: <20251021233056.1320108-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761088814; x=1792624814;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I9Ly7lq6P8jlltk6r/g0cwHvSjQwry0DupcNqIuXINI=;
 b=MrTV/BDi6a7VUKZHkJCyw6D621rxWP+qe7KQUjov+XztvMPkt1hcAMy2
 xm2nRKdV4q7brieHKty5yqk/nl12mhMDuzdH38mtr2meIbuvtqLxukc0O
 fcjZ6hfSA0w8mDNqUsrLF38kD66LINSb5VqG0WUvAe8Q2iPXJxlE4rqOb
 bkueBSjkvq5ySpIWIxXg+GC+Qok3QQhMK72UzmjqGkh6y8nTQNy0YpPmr
 /rnHAIG3dp9dJNe45NixED0CShoCeurlsQNV6w2QoJIOpqQJaLai/aSdg
 DhNFSRwLRX64pZUtHlcdBoJSrrL0W0qzRwE+90ladm0u2ExI7xWXv2gE9
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MrTV/BDi
Subject: [Intel-wired-lan] [PATCH iwl-next v9 05/10] idpf: reshuffle
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
index 093c4cb13118..40f1ce901500 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -349,29 +349,29 @@ struct idpf_q_vec_rsrc {
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
@@ -380,34 +380,32 @@ struct idpf_q_vec_rsrc {
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

