Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93232BE1D25
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Oct 2025 08:54:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A395361AD5;
	Thu, 16 Oct 2025 06:54:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dNDpsv_S-49g; Thu, 16 Oct 2025 06:54:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09C3D61AD2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760597650;
	bh=kf97hgp4gnVvaB9Mq8xDY2xLd3CVqZzbxfR2jv8DOUA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=U3naGf1xFJP/MuXxlRcXtQuU73mYHQUpJktueqmzvSLObVq59QzkBV4X6HrAIBxTC
	 mWpA3eoiVF/Ll8yF/0A8SL4+myuBVtFdUKOh+rw2tkfp03F5bYHv/qtHDAbl5PcrCo
	 iszygbjHzjf4qOiCDOhVLlKiykVmMh8WprqnYMTr99LkLWUJT7fZwDxiQlx4U3++3X
	 Ow7ei+cgWApLm1g3ig4KisiAij/D7yUzGJzL4OfilRBrbSY+Xnlw2VpKgi70jS49GK
	 4YA6RiwvzYTnOHph0FWrokdFE46x72hw85mWTQhzG6ARYB0Wg0XKg1ZcC8/WT3G1Mh
	 waLeatWbhKJDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09C3D61AD2;
	Thu, 16 Oct 2025 06:54:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 83AFA116F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 06:54:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 69FA3403C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 06:54:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zH4tgAns84TH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Oct 2025 06:54:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 18D05403AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18D05403AD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 18D05403AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 06:54:06 +0000 (UTC)
X-CSE-ConnectionGUID: XID8Dc+pTa+Zn8WqSlAxew==
X-CSE-MsgGUID: UfP/E9TbS3+fq1Nr/h/J+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="62492420"
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="62492420"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:54:06 -0700
X-CSE-ConnectionGUID: I6iY64mQTWC/a991+Jt4HQ==
X-CSE-MsgGUID: 8onTWFUhRnez5NMIY1Nqsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="181582344"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by orviesa010.jf.intel.com with ESMTP; 15 Oct 2025 23:54:05 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 16 Oct 2025 08:22:50 +0200
Message-ID: <20251016062250.1461903-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760597647; x=1792133647;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=y9g7++ThMeSMQPh1ylrPaNSSi2JtgH52izVD4ZWgxXk=;
 b=nUAvPbC97KW+i1JO6+SLm2TNUa9tyxqvu7EZABV2gR7PPTvGcJkLGsvT
 pI+qTNnlGtAcw5GXXMKTl3oEF9EBthyFeGaciTF0JKBOSQe/dlBsfdSSK
 nTrNNiqoCQx2XGiQ4boVuK7JzXXGKUTCQ5LWuFEcVEURe8wkiH1CARuAd
 IjlGRbYx2oj1wgK1GvovWo8zgN6Nz7y63kOPehQJKy2apCpy2+Cu2sSaG
 On4OLv6YIBeCdwC//3E7sKVi0fkwd1srToKvuWhFoNYSZ6MaKzlRIdABn
 bexfK0zYfVYoiZdOqxJHPpBonQ0brg5UE9RcYAPDdSFIEdWankVAPqmCX
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nUAvPbC9
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: lower default irq/queue
 counts on high-core systems
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

On some high-core systems loading ice driver with default values can
lead to queue/irq exhaustion. It will result in no additional resources
for SR-IOV.

In most cases there is no performance reason for more than 64 queues.
Limit the default value to 64. Still, using ethtool the number of
queues can be changed up to num_online_cpus().

This change affects only the default queue amount on systems with more
than 64 cores.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h     | 20 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_irq.c |  6 ++++--
 drivers/net/ethernet/intel/ice/ice_lib.c |  8 ++++----
 3 files changed, 28 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 3d4d8b88631b..354ec2950ff3 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -1133,4 +1133,24 @@ static inline struct ice_hw *ice_get_primary_hw(struct ice_pf *pf)
 	else
 		return &pf->adapter->ctrl_pf->hw;
 }
+
+/**
+ * ice_capped_num_cpus - normalize the number of CPUs to a reasonable limit
+ *
+ * This function returns the number of online CPUs, but caps it at suitable
+ * default to prevent excessive resource allocation on systems with very high
+ * CPU counts.
+ *
+ * Note: suitable default is currently at 64, which is reflected in default_cpus
+ * constant. In most cases there is no much benefit for more than 64 and it is a
+ * power of 2 number.
+ *
+ * Return: number of online CPUs, capped at suitable default.
+ */
+static inline u16 ice_capped_num_cpus(void)
+{
+	const int default_cpus = 64;
+
+	return min(num_online_cpus(), default_cpus);
+}
 #endif /* _ICE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
index 30801fd375f0..df4d847ca858 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.c
+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
@@ -106,9 +106,11 @@ static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf,
 #define ICE_RDMA_AEQ_MSIX 1
 static int ice_get_default_msix_amount(struct ice_pf *pf)
 {
-	return ICE_MIN_LAN_OICR_MSIX + num_online_cpus() +
+	u16 cpus = ice_capped_num_cpus();
+
+	return ICE_MIN_LAN_OICR_MSIX + cpus +
 	       (test_bit(ICE_FLAG_FD_ENA, pf->flags) ? ICE_FDIR_MSIX : 0) +
-	       (ice_is_rdma_ena(pf) ? num_online_cpus() + ICE_RDMA_AEQ_MSIX : 0);
+	       (ice_is_rdma_ena(pf) ? cpus + ICE_RDMA_AEQ_MSIX : 0);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index bac481e8140d..3c5f8a4b6c6d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -159,12 +159,12 @@ static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
 
 static u16 ice_get_rxq_count(struct ice_pf *pf)
 {
-	return min(ice_get_avail_rxq_count(pf), num_online_cpus());
+	return min(ice_get_avail_rxq_count(pf), ice_capped_num_cpus());
 }
 
 static u16 ice_get_txq_count(struct ice_pf *pf)
 {
-	return min(ice_get_avail_txq_count(pf), num_online_cpus());
+	return min(ice_get_avail_txq_count(pf), ice_capped_num_cpus());
 }
 
 /**
@@ -907,13 +907,13 @@ static void ice_vsi_set_rss_params(struct ice_vsi *vsi)
 		if (vsi->type == ICE_VSI_CHNL)
 			vsi->rss_size = min_t(u16, vsi->num_rxq, max_rss_size);
 		else
-			vsi->rss_size = min_t(u16, num_online_cpus(),
+			vsi->rss_size = min_t(u16, ice_capped_num_cpus(),
 					      max_rss_size);
 		vsi->rss_lut_type = ICE_LUT_PF;
 		break;
 	case ICE_VSI_SF:
 		vsi->rss_table_size = ICE_LUT_VSI_SIZE;
-		vsi->rss_size = min_t(u16, num_online_cpus(), max_rss_size);
+		vsi->rss_size = min_t(u16, ice_capped_num_cpus(), max_rss_size);
 		vsi->rss_lut_type = ICE_LUT_VSI;
 		break;
 	case ICE_VSI_VF:
-- 
2.49.0

