Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E3FA93F12
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Apr 2025 22:49:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFE5C6070A;
	Fri, 18 Apr 2025 20:49:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VTMzZJxRKuiN; Fri, 18 Apr 2025 20:49:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59D426070C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745009382;
	bh=7jT5sCrOz2IlKYdy2rh0HeUSvPZ+183wAMRSLWkfL8Y=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Rl6KQyO8Fy5Lv8KgJBBGEHRHUu1+dRi3xeKGLRJq7e8a8L6M+kPf00GlpAul51Ulf
	 zxE33zA0VNnHdJEmC4pEMkD9AISqkm/xYGVMPwlGCghgZXAT59MvcfriC1o0sDb24A
	 Du/edaHhdVeCqvXY8iOwCK7jp8Z2lDgGAYys2TboevCu+8ZZEvuMOZCidlojAMvgcI
	 DXsE54p2N7V61OQn2EHE2pMlg7fnXgf6oNKSv0IWsaQig6+lMITuorDi3fxlg4xwSa
	 TY/Tk4oNooH+WGp1riBSO7LV3ipsDYJB1pMnm5MurDQVi/Rw5xOVk4/PGd2ot73p3D
	 rqeQlvSSragPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59D426070C;
	Fri, 18 Apr 2025 20:49:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B01D61
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 20:49:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 804BF60718
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 20:49:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ABgyAavCer2p for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Apr 2025 20:49:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D50DC6070A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D50DC6070A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D50DC6070A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 20:49:37 +0000 (UTC)
X-CSE-ConnectionGUID: qfjUi2TMRgGi70MYmxiYsw==
X-CSE-MsgGUID: V8r59+y4STqBf9rhlT8W1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11407"; a="46814314"
X-IronPort-AV: E=Sophos;i="6.15,222,1739865600"; d="scan'208";a="46814314"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2025 13:49:36 -0700
X-CSE-ConnectionGUID: EINdv4ZuQJ6s2OojfH7jFw==
X-CSE-MsgGUID: Z5RygqyGRHigDe7nsR5cdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,222,1739865600"; d="scan'208";a="168406316"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by orviesa001.jf.intel.com with ESMTP; 18 Apr 2025 13:49:36 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, milena.olech@intel.com, anton.nadezhdin@intel.com,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Fri, 18 Apr 2025 13:49:15 -0700
Message-ID: <20250418204919.5875-6-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250418204919.5875-1-pavan.kumar.linga@intel.com>
References: <20250418204919.5875-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745009378; x=1776545378;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cZl/BJfi/h+kCCJwfmS9oToj6j7Cv1nicnQuhsqPm2Y=;
 b=Uh72DfToW4y9ybZosQbIxF4HN1xVRRcaSlFPJLxbVbs1OjcrMlD9jSdH
 2qq9WpPF/qLzfdfP5GFzh5t5omLyvdbPXZjGcz9PyGOR55o6sgjyy28cL
 u7yrMOuPYFYjR01J3yJKH1JbOlSUvqiSNbNtna9b7yJJh6Y0XqSDu1w4c
 CaCx5sGCPSIKuAToqu/e2v1hYYAg1ALnZppkAnD019sacvIDxnbxA0C+4
 QjznmALAM6ldpIKdevX9/bQTlzKn+GuJ9gLwdyhNMsaJWePgZ9uosKGS8
 wVk0fWVuXJGAUfSSj3rlQpwZSEEIwCp+w6zbEREgOMoQ/SFQAVDZ1Mcf5
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Uh72DfTo
Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/9] idpf: reshuffle
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
index bd95947a9936..39f4c7009a1a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -319,24 +319,24 @@ struct idpf_q_vec_rsrc {
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
@@ -346,27 +346,26 @@ struct idpf_q_vec_rsrc {
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

