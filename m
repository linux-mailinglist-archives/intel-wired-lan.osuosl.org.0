Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A35C1F2C0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Oct 2025 10:04:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 965706139B;
	Thu, 30 Oct 2025 09:04:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jxGnjjOgP8UV; Thu, 30 Oct 2025 09:04:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C25F613A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761815051;
	bh=lQCJa8NyVeEu3KsiFlWM6ZFkRMwPmUiFeu57jcAzu1g=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OLk1n//kvDSiHcDN2As0FUgDDANZhsvCDxgjsyCy/NYvYsHcfbJXn608rzhVZxqdl
	 BEFBHW2ioaTtzm9TJxPOD2FDKK7aI0Jna+/bl4EiInjIxzQhHUcdn+kD4JqdGaabvN
	 /5C+UfZBztY9ZgRkz3rUtl6TNq8MYL6FuwEyXxftfpRMczRrLfS6UD3spP3VtbaUPX
	 KyMz96aabKP3DnYhPi5TwUZHq13RmzUs8tHS9gpg0ViL/3WzbCdikOjEVYimXSksAy
	 XYKYdfrJdKe/hPFd/bbxAVDjU2g3IMFRjh2yYn3rFEX2KFx40T7Fl37p+5ZkUlqybJ
	 0MJ84mjFKHfDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C25F613A3;
	Thu, 30 Oct 2025 09:04:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CDCFCCD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 09:04:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B73AD41142
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 09:04:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jTl7Uz5EytAm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Oct 2025 09:04:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C812E41141
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C812E41141
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C812E41141
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 09:04:07 +0000 (UTC)
X-CSE-ConnectionGUID: 4R/1NraCQmGWrxiPRo5rQA==
X-CSE-MsgGUID: 5rRamjmgQFqH5yN/1wdmUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="63859813"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="63859813"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 02:04:06 -0700
X-CSE-ConnectionGUID: iP8AZmHOQtiVpCl0RxZP+w==
X-CSE-MsgGUID: l5nv9fnAQ7SdSZDvOXwS5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="190235827"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by orviesa004.jf.intel.com with ESMTP; 30 Oct 2025 02:04:05 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, pmenzel@molgen.mpg.de,
 aleksander.lobakin@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu, 30 Oct 2025 09:30:53 +0100
Message-ID: <20251030083053.2166525-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761815048; x=1793351048;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NQz9mtyQ3kbfgKNwxwkoZhI35YM8EEwYuaM+QW+FjI8=;
 b=iGycCrjelAaYwaKkDCtgucEh9YVyvVhlY4fIwjHUDdWIxquz5zwAnMA4
 dUobqi3jgiuShDa6fOee7rNxSOgyoeL7QCZEwRI33yqOfRAXGRTuLw7Ds
 0jMKh/2BN6HrpPF/su3FzjkqzB6B8+j8LMheO7b20supM/c4yggiLpBWA
 udj3j0x6tGPCnMPqgjQBvVTwIZtM5LCM/LYgcSO4usBOVjFpJXKDbkWIh
 VFnZS4EoXo50csirM2DjVJMAfE7s+0sWDzw1sBto5cV7SNXkLkIsDyq2p
 CEHyWMr5HfaosXr2NwI35u58+kmgzm2z6fOMajS7HvYHQE4Jtay05aYD/
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iGycCrje
Subject: [Intel-wired-lan] [PATCH iwl-next v3] ice: use
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
$ethtool -L ethX combined $(nproc)

This change affects only the default queue amount.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
v2 --> v3:
 * use $(nproc) in command example in commit message

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

