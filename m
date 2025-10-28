Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2071DC13547
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 08:39:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 317B66158D;
	Tue, 28 Oct 2025 07:39:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id el5edRKVzAl3; Tue, 28 Oct 2025 07:39:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 868C86158E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761637162;
	bh=2gi0T+e/9mzAgW7LipqqxsPK8/Yt1qPxtxlxfAcC6Mw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=D8pm0eKGVCSoMQUy56r7z0cXRHIQZiQE+SkXAVPU3D01nP900+qk513sdLnissTuX
	 Yfl7LeaKrHHJPVPb9cEXgqlZXPDPhazIz/sXzuRn+P6p01RyPSg82aQl55ALO61UWL
	 fiO8t5gsahexLY+qnCFtvOOZakW+ujWwjftQ8LNr4ekz2thq5MOHu9bQ8/nMJXEvcH
	 0SP054E1NzXscTJUsHtY9qsHMp/mlPaReKs8VnRmelpyrC0JFmtD+881AhC2gpZZu+
	 x//zFl0ElrIJqszep9YOcm5V0IfJFRkdJ6mAdY4Qz32M3jLUZEYnmwhrC78uSgc9PO
	 VGMlzzzSKLn4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 868C86158E;
	Tue, 28 Oct 2025 07:39:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C892F43F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 07:39:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B950D6158C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 07:39:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yR-Qs9wtIDVt for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 07:39:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C27B861584
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C27B861584
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C27B861584
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 07:39:19 +0000 (UTC)
X-CSE-ConnectionGUID: JLAlnZ88Q4mcx3tVXMbM7Q==
X-CSE-MsgGUID: vRM49KlsTM+7ywTHAFUvjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63765874"
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="63765874"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 00:39:19 -0700
X-CSE-ConnectionGUID: Jb/ny1/iRRK2VB41FAA5DA==
X-CSE-MsgGUID: 12JVztAaRyCIq/i79Fp5vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="185358734"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by orviesa008.jf.intel.com with ESMTP; 28 Oct 2025 00:39:17 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, pmenzel@molgen.mpg.de,
 aleksander.lobakin@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 28 Oct 2025 08:06:34 +0100
Message-ID: <20251028070634.2124215-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761637160; x=1793173160;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UjeRE3qXwZy7hxTb+9+ah7JknOmhwGh2ga0aK+Okz4o=;
 b=bPiy3+QN/Ba1cFsvI5IUhxGbLEXYXNGheHYFmeBqd3KpOubsIM5UzecA
 6qeeR6FYthXg1mAw4VbOwElFW0WTEaRu7abSWnHASR3rYc7qdnZyjDv+R
 BG1YTk9yxKmEo00B07Md2JXu0aQ0lZcKhrN74drS5NRvEdsmdYQ4v35QU
 YyqEk1RQsXtV5L8sIvcli4vVw5V2Zwl8liUG53p0d0lbdqlHXZhOnIdY0
 szhweMnHtdBPyyIB+DGHdL93H8Vs8ujJi3L5GtsE0diBcac8W/qHsFaI0
 4Lldt1ORdUlEx0iuF4g11W1+0Wer5GfR0PaLj2HOqwb9AOUSjRVoqSjks
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bPiy3+QN
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: use
 netif_get_num_default_rss_queues()
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

On some high-core systems (like AMD EPYC Bergamo, Intel Clearwater
Forest) loading ice driver with default values can lead to queue/irq
exhaustion. It will result in no additional resources for SR-IOV.

In most cases there is no performance reason for more than half
num_cpus(). Limit the default value to it using generic
netif_get_num_default_rss_queues().

Still, using ethtool the number of queues can be changed up to
num_online_cpus(). It can be done by calling:
$ethtool -L ethX combined max_cpu

This change affects only the default queue amount.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
v1 --> v2:
 * Follow Olek's comment and switch from custom limiting to the generic
   netif_...() function.
 * Add more info in commit message (Paul)
 * Dropping RB tags, as it is different patch now
---
 drivers/net/ethernet/intel/ice/ice_irq.c |  5 +++--
 drivers/net/ethernet/intel/ice/ice_lib.c | 12 ++++++++----
 2 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
index 30801fd375f0..1d9b2d646474 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.c
+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
@@ -106,9 +106,10 @@ static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf,
 #define ICE_RDMA_AEQ_MSIX 1
 static int ice_get_default_msix_amount(struct ice_pf *pf)
 {
-	return ICE_MIN_LAN_OICR_MSIX + num_online_cpus() +
+	return ICE_MIN_LAN_OICR_MSIX + netif_get_num_default_rss_queues() +
 	       (test_bit(ICE_FLAG_FD_ENA, pf->flags) ? ICE_FDIR_MSIX : 0) +
-	       (ice_is_rdma_ena(pf) ? num_online_cpus() + ICE_RDMA_AEQ_MSIX : 0);
+	       (ice_is_rdma_ena(pf) ? netif_get_num_default_rss_queues() +
+				      ICE_RDMA_AEQ_MSIX : 0);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index bac481e8140d..e366d089bef9 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -159,12 +159,14 @@ static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
 
 static u16 ice_get_rxq_count(struct ice_pf *pf)
 {
-	return min(ice_get_avail_rxq_count(pf), num_online_cpus());
+	return min(ice_get_avail_rxq_count(pf),
+		   netif_get_num_default_rss_queues());
 }
 
 static u16 ice_get_txq_count(struct ice_pf *pf)
 {
-	return min(ice_get_avail_txq_count(pf), num_online_cpus());
+	return min(ice_get_avail_txq_count(pf),
+		   netif_get_num_default_rss_queues());
 }
 
 /**
@@ -907,13 +909,15 @@ static void ice_vsi_set_rss_params(struct ice_vsi *vsi)
 		if (vsi->type == ICE_VSI_CHNL)
 			vsi->rss_size = min_t(u16, vsi->num_rxq, max_rss_size);
 		else
-			vsi->rss_size = min_t(u16, num_online_cpus(),
+			vsi->rss_size = min_t(u16,
+					      netif_get_num_default_rss_queues(),
 					      max_rss_size);
 		vsi->rss_lut_type = ICE_LUT_PF;
 		break;
 	case ICE_VSI_SF:
 		vsi->rss_table_size = ICE_LUT_VSI_SIZE;
-		vsi->rss_size = min_t(u16, num_online_cpus(), max_rss_size);
+		vsi->rss_size = min_t(u16, netif_get_num_default_rss_queues(),
+				      max_rss_size);
 		vsi->rss_lut_type = ICE_LUT_VSI;
 		break;
 	case ICE_VSI_VF:
-- 
2.49.0

